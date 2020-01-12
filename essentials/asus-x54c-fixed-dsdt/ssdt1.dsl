/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20191213 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.dat, Sun Jan 12 17:20:23 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003B7 (951)
 *     Revision         0x01
 *     Checksum         0x25
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003001 (12289)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190509 (538510601)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu0Ist", 0x00003002)
{
    External (_PR_.CPU0, DeviceObj)
    External (CFGD, UnknownObj)
    External (LIMT, IntObj)
    External (NPSS, IntObj)
    External (PDC0, UnknownObj)
    External (TCNT, IntObj)

    Scope (\_PR.CPU0)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\LIMT) /* External reference */
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            If (((CFGD & One) && (PDC0 & One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (Package (0x02)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x10,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000001000, // Address
                        ,)
                }, 

                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x00000000000000B3, // Address
                        ,)
                }
            })
        }

        Method (XPSS, 0, NotSerialized)
        {
            If ((PDC0 & One))
            {
                Return (NPSS) /* External reference */
            }

            Return (SPSS) /* \_PR_.CPU0.SPSS */
        }

        Name (SPSS, Package (0x0F)
        {
            Package (0x06)
            {
                0x0899, 
                0xAFC8, 
                0x6E, 
                0x0A, 
                0x83, 
                Zero
            }, 

            Package (0x06)
            {
                0x0898, 
                0xAFC8, 
                0x6E, 
                0x0A, 
                0x0183, 
                One
            }, 

            Package (0x06)
            {
                0x07D0, 
                0x9A9D, 
                0x6E, 
                0x0A, 
                0x0283, 
                0x02
            }, 

            Package (0x06)
            {
                0x076C, 
                0x920B, 
                0x6E, 
                0x0A, 
                0x0383, 
                0x03
            }, 

            Package (0x06)
            {
                0x0708, 
                0x87F6, 
                0x6E, 
                0x0A, 
                0x0483, 
                0x04
            }, 

            Package (0x06)
            {
                0x06A4, 
                0x7FBF, 
                0x6E, 
                0x0A, 
                0x0583, 
                0x05
            }, 

            Package (0x06)
            {
                0x0640, 
                0x7613, 
                0x6E, 
                0x0A, 
                0x0683, 
                0x06
            }, 

            Package (0x06)
            {
                0x05DC, 
                0x6E34, 
                0x6E, 
                0x0A, 
                0x0783, 
                0x07
            }, 

            Package (0x06)
            {
                0x0578, 
                0x64E4, 
                0x6E, 
                0x0A, 
                0x0883, 
                0x08
            }, 

            Package (0x06)
            {
                0x0514, 
                0x5D5C, 
                0x6E, 
                0x0A, 
                0x0983, 
                0x09
            }, 

            Package (0x06)
            {
                0x04B0, 
                0x546D, 
                0x6E, 
                0x0A, 
                0x0A83, 
                0x0A
            }, 

            Package (0x06)
            {
                0x044C, 
                0x4D3F, 
                0x6E, 
                0x0A, 
                0x0B83, 
                0x0B
            }, 

            Package (0x06)
            {
                0x03E8, 
                0x44AE, 
                0x6E, 
                0x0A, 
                0x0C83, 
                0x0C
            }, 

            Package (0x06)
            {
                0x0384, 
                0x3C4D, 
                0x6E, 
                0x0A, 
                0x0D83, 
                0x0D
            }, 

            Package (0x06)
            {
                0x0320, 
                0x359B, 
                0x6E, 
                0x0A, 
                0x0E83, 
                0x0E
            }
        })
        Name (_PSS, Package (0x0F)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x0899, 
                0xAFC8, 
                0x0A, 
                0x0A, 
                0x1F00, 
                0x1F00
            }, 

            Package (0x06)
            {
                0x0898, 
                0xAFC8, 
                0x0A, 
                0x0A, 
                0x1600, 
                0x1600
            }, 

            Package (0x06)
            {
                0x07D0, 
                0x9A9D, 
                0x0A, 
                0x0A, 
                0x1400, 
                0x1400
            }, 

            Package (0x06)
            {
                0x076C, 
                0x920B, 
                0x0A, 
                0x0A, 
                0x1300, 
                0x1300
            }, 

            Package (0x06)
            {
                0x0708, 
                0x87F6, 
                0x0A, 
                0x0A, 
                0x1200, 
                0x1200
            }, 

            Package (0x06)
            {
                0x06A4, 
                0x7FBF, 
                0x0A, 
                0x0A, 
                0x1100, 
                0x1100
            }, 

            Package (0x06)
            {
                0x0640, 
                0x7613, 
                0x0A, 
                0x0A, 
                0x1000, 
                0x1000
            }, 

            Package (0x06)
            {
                0x05DC, 
                0x6E34, 
                0x0A, 
                0x0A, 
                0x0F00, 
                0x0F00
            }, 

            Package (0x06)
            {
                0x0578, 
                0x64E4, 
                0x0A, 
                0x0A, 
                0x0E00, 
                0x0E00
            }, 

            Package (0x06)
            {
                0x0514, 
                0x5D5C, 
                0x0A, 
                0x0A, 
                0x0D00, 
                0x0D00
            }, 

            Package (0x06)
            {
                0x04B0, 
                0x546D, 
                0x0A, 
                0x0A, 
                0x0C00, 
                0x0C00
            }, 

            Package (0x06)
            {
                0x044C, 
                0x4D3F, 
                0x0A, 
                0x0A, 
                0x0B00, 
                0x0B00
            }, 

            Package (0x06)
            {
                0x03E8, 
                0x44AE, 
                0x0A, 
                0x0A, 
                0x0A00, 
                0x0A00
            }, 

            Package (0x06)
            {
                0x0384, 
                0x3C4D, 
                0x0A, 
                0x0A, 
                0x0900, 
                0x0900
            }, 

            Package (0x06)
            {
                0x0320, 
                0x359B, 
                0x0A, 
                0x0A, 
                0x0800, 
                0x0800
            }
        })
        Name (PSDF, Zero)
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (!PSDF)
            {
                DerefOf (HPSD [Zero]) [0x04] = TCNT /* External reference */
                DerefOf (SPSD [Zero]) [0x04] = TCNT /* External reference */
                PSDF = Ones
            }

            If ((PDC0 & 0x0800))
            {
                Return (HPSD) /* \_PR_.CPU0.HPSD */
            }

            Return (SPSD) /* \_PR_.CPU0.SPSD */
        }

        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }
}

