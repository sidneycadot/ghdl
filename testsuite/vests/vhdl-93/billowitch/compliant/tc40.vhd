
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc40.vhd,v 1.2 2001-10-26 16:29:53 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c04s03b01x01p02n01i00040ent IS
END c04s03b01x01p02n01i00040ent;

ARCHITECTURE c04s03b01x01p02n01i00040arch OF c04s03b01x01p02n01i00040ent IS
  constant C1 : Real := ( (1.23 + 1.45) - (6.04 - 5.99) + ((2.4) / (1.2)) );
                                        -- No_failure_here
BEGIN
  TESTING: PROCESS
  BEGIN
    assert NOT( C1 = 4.63 )
      report "***PASSED TEST: c04s03b01x01p02n01i00040"
      severity NOTE;
    assert ( C1 = 4.63 )
      report "***FAILED TEST: c04s03b01x01p02n01i00040- A complex real expression assigned to the real constant test failed."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c04s03b01x01p02n01i00040arch;
