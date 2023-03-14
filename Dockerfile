# escape=`
FROM mcr.microsoft.com/windows/servercore:ltsc2022
ARG  DELUGE_INSTALLER
ARG  DELUGE_INSTALLER_ARGS
ADD  ${DELUGE_INSTALLER} C:\deluge-setup.exe
RUN  start "" /wait C:\deluge-setup.exe %DELUGE_INSTALLER_ARGS%
COPY container_entry.bat C:\
CMD  [ "C:\\container_entry.bat" ]
