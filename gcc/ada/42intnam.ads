------------------------------------------------------------------------------
--                                                                          --
--                GNU ADA RUN-TIME LIBRARY (GNARL) COMPONENTS               --
--                                                                          --
--                   A D A . I N T E R R U P T S . N A M E S                --
--                                                                          --
--                                  S p e c                                 --
--                                                                          --
--                             $Revision: 1.1.1.1 $
--                                                                          --
--          Copyright (C) 1991-2001 Free Software Foundation, Inc.          --
--                                                                          --
-- GNARL is free software; you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion. GNARL is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNARL; see file COPYING.  If not, write --
-- to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, --
-- MA 02111-1307, USA.                                                      --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
-- GNARL was developed by the GNARL team at Florida State University. It is --
-- now maintained by Ada Core Technologies Inc. in cooperation with Florida --
-- State University (http://www.gnat.com).                                  --
--                                                                          --
------------------------------------------------------------------------------

--  This is a LynxOS version of this package.
--
--  The following signals are reserved by the run time:
--
--  SIGFPE, SIGILL, SIGSEGV, SIGBUS, SIGTRAP, SIGABRT, SIGINT,
--  SIGWAITING, SIGLWP, SIGTTIN, SIGTTOU, SIGTSTP, SIGPROF, SIGSTOP, SIGKILL
--
--  The pragma Unreserve_All_Interrupts affects the following signal(s):
--
--  SIGINT: made available for Ada handler
--  SIGILL, SIGBUS, SIGSEGV: disconnected from runtime exception mapping

with System.OS_Interface;
--  used for names of interrupts

package Ada.Interrupts.Names is

   --  Beware that the mapping of names to signals may be
   --  many-to-one. There may be aliases.

   SIGHUP : constant Interrupt_ID :=
     System.OS_Interface.SIGHUP;      --  hangup

   SIGINT : constant Interrupt_ID :=
     System.OS_Interface.SIGINT;      --  interrupt (rubout)

   SIGQUIT : constant Interrupt_ID :=
     System.OS_Interface.SIGQUIT;     --  quit (ASCD FS)

   SIGILL : constant Interrupt_ID :=
     System.OS_Interface.SIGILL;      --  illegal instruction (not reset)

   SIGTRAP : constant Interrupt_ID :=
     System.OS_Interface.SIGTRAP;     --  trace trap (not reset)

   SIGBRK : constant Interrupt_ID :=
     System.OS_Interface.SIGBRK;      --  break

   SIGIOT : constant Interrupt_ID :=
     System.OS_Interface.SIGIOT;      --  IOT instruction

   SIGABRT : constant Interrupt_ID := --  used by abort,
     System.OS_Interface.SIGABRT;     --  replace SIGIOT in the  future

   SIGCORE : constant Interrupt_ID :=
     System.OS_Interface.SIGCORE;     --  kill with core dump

   SIGEMT : constant Interrupt_ID :=
     System.OS_Interface.SIGEMT;      --  EMT instruction

   SIGFPE : constant Interrupt_ID :=
     System.OS_Interface.SIGFPE;      --  floating point exception

   SIGKILL : constant Interrupt_ID :=
     System.OS_Interface.SIGKILL;     --  kill (cannot be caught or ignored)

   SIGBUS : constant Interrupt_ID :=
     System.OS_Interface.SIGBUS;      --  bus error

   SIGSEGV : constant Interrupt_ID :=
     System.OS_Interface.SIGSEGV;     --  segmentation violation

   SIGSYS : constant Interrupt_ID :=
     System.OS_Interface.SIGSYS;      --  bad argument to system call

   SIGPIPE : constant Interrupt_ID := --  write on a pipe with
     System.OS_Interface.SIGPIPE;     --  no one to read it

   SIGALRM : constant Interrupt_ID :=
     System.OS_Interface.SIGALRM;     --  alarm clock

   SIGTERM : constant Interrupt_ID :=
     System.OS_Interface.SIGTERM;     --  software termination signal from kill

   SIGURG : constant Interrupt_ID :=
     System.OS_Interface.SIGURG;      --  urgent condition on IO channel

   SIGSTOP : constant Interrupt_ID :=
     System.OS_Interface.SIGSTOP;     --  stop (cannot be caught or ignored)

   SIGTSTP : constant Interrupt_ID :=
     System.OS_Interface.SIGTSTP;     --  user stop requested from tty

   SIGCONT : constant Interrupt_ID :=
     System.OS_Interface.SIGCONT;     --  stopped process has been continued

   SIGCLD : constant Interrupt_ID :=
     System.OS_Interface.SIGCLD;      --  child status change

   SIGCHLD : constant Interrupt_ID :=
     System.OS_Interface.SIGCHLD;     --  4.3BSD's/POSIX name for SIGCLD

   SIGTTIN : constant Interrupt_ID :=
     System.OS_Interface.SIGTTIN;     --  background tty read attempted

   SIGTTOU : constant Interrupt_ID :=
     System.OS_Interface.SIGTTOU;     --  background tty write attempted

   SIGPOLL : constant Interrupt_ID :=
     System.OS_Interface.SIGPOLL;     --  pollable event occurred

   SIGIO : constant Interrupt_ID :=   --  input/output possible,
     System.OS_Interface.SIGIO;       --  SIGPOLL alias (Solaris)

   SIGXCPU : constant Interrupt_ID :=
     System.OS_Interface.SIGXCPU;     --  CPU time limit exceeded

   SIGXFSZ : constant Interrupt_ID :=
     System.OS_Interface.SIGXFSZ;     --  filesize limit exceeded

   SIGVTALRM : constant Interrupt_ID :=
     System.OS_Interface.SIGVTALRM;   --  virtual timer expired

   SIGPROF : constant Interrupt_ID :=
     System.OS_Interface.SIGPROF;     --  profiling timer expired

   SIGWINCH : constant Interrupt_ID :=
     System.OS_Interface.SIGWINCH;    --  window size change

   SIGLOST : constant Interrupt_ID :=
     System.OS_Interface.SIGLOST;     --  SUN 4.1 compatibility

   SIGUSR1 : constant Interrupt_ID :=
     System.OS_Interface.SIGUSR1;     --  user defined signal 1

   SIGUSR2 : constant Interrupt_ID :=
     System.OS_Interface.SIGUSR2;     --  user defined signal 2

   SIGPRIO : constant Interrupt_ID :=
     System.OS_Interface.SIGPRIO;
   --  sent to a process with its priority
   --  or group is changed
end Ada.Interrupts.Names;
