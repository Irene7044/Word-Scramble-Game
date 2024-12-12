% This script reads user input name and display it within a message of a
% popup dialogue along with instructions

% Prompt user input name 
userName = input('Enter your name: ',"s");

% Popup message box 
introMessage = questdlg(sprintf('Hello %s! Welcome to Word Scramble', userName), 'Welcome Menu','Rules','Play','Quit','Quit');
