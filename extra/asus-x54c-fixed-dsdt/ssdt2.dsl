/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt2.dat, Sun May 12 20:24:18 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000955 (2389)
 *     Revision         0x01
 *     Checksum         0x47
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu0Ist", 0x00003001)
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
                0x00000899,
                0x0000AFC8,
                0x0000006E,
                0x0000000A,
                0x00000083,
                0x00000000
            },

            Package (0x06)
            {
                0x00000898,
                0x0000AFC8,
                0x0000006E,
                0x0000000A,
                0x00000183,
                0x00000001
            },

            Package (0x06)
            {
                0x000007D0,
                0x00009A9D,
                0x0000006E,
                0x0000000A,
                0x00000283,
                0x00000002
            },

            Package (0x06)
            {
                0x0000076C,
                0x0000920B,
                0x0000006E,
                0x0000000A,
                0x00000383,
                0x00000003
            },

            Package (0x06)
            {
                0x00000708,
                0x000087F6,
                0x0000006E,
                0x0000000A,
                0x00000483,
                0x00000004
            },

            Package (0x06)
            {
                0x000006A4,
                0x00007FBF,
                0x0000006E,
                0x0000000A,
                0x00000583,
                0x00000005
            },

            Package (0x06)
            {
                0x00000640,
                0x00007613,
                0x0000006E,
                0x0000000A,
                0x00000683,
                0x00000006
            },

            Package (0x06)
            {
                0x000005DC,
                0x00006E34,
                0x0000006E,
                0x0000000A,
                0x00000783,
                0x00000007
            },

            Package (0x06)
            {
                0x00000578,
                0x000064E4,
                0x0000006E,
                0x0000000A,
                0x00000883,
                0x00000008
            },

            Package (0x06)
            {
                0x00000514,
                0x00005D5C,
                0x0000006E,
                0x0000000A,
                0x00000983,
                0x00000009
            },

            Package (0x06)
            {
                0x000004B0,
                0x0000546D,
                0x0000006E,
                0x0000000A,
                0x00000A83,
                0x0000000A
            },

            Package (0x06)
            {
                0x0000044C,
                0x00004D3F,
                0x0000006E,
                0x0000000A,
                0x00000B83,
                0x0000000B
            },

            Package (0x06)
            {
                0x000003E8,
                0x000044AE,
                0x0000006E,
                0x0000000A,
                0x00000C83,
                0x0000000C
            },

            Package (0x06)
            {
                0x00000384,
                0x00003C4D,
                0x0000006E,
                0x0000000A,
                0x00000D83,
                0x0000000D
            },

            Package (0x06)
            {
                0x00000320,
                0x0000359B,
                0x0000006E,
                0x0000000A,
                0x00000E83,
                0x0000000E
            }
        })

        Name (_PSS, Package (0x0F)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x00000899,
                0x0000AFC8,
                0x0000000A,
                0x0000000A,
                0x00001F00,
                0x00001F00
            },

            Package (0x06)
            {
                0x00000898,
                0x0000AFC8,
                0x0000000A,
                0x0000000A,
                0x00001600,
                0x00001600
            },

            Package (0x06)
            {
                0x000007D0,
                0x00009A9D,
                0x0000000A,
                0x0000000A,
                0x00001400,
                0x00001400
            },

            Package (0x06)
            {
                0x0000076C,
                0x0000920B,
                0x0000000A,
                0x0000000A,
                0x00001300,
                0x00001300
            },

            Package (0x06)
            {
                0x00000708,
                0x000087F6,
                0x0000000A,
                0x0000000A,
                0x00001200,
                0x00001200
            },

            Package (0x06)
            {
                0x000006A4,
                0x00007FBF,
                0x0000000A,
                0x0000000A,
                0x00001100,
                0x00001100
            },

            Package (0x06)
            {
                0x00000640,
                0x00007613,
                0x0000000A,
                0x0000000A,
                0x00001000,
                0x00001000
            },

            Package (0x06)
            {
                0x000005DC,
                0x00006E34,
                0x0000000A,
                0x0000000A,
                0x00000F00,
                0x00000F00
            },

            Package (0x06)
            {
                0x00000578,
                0x000064E4,
                0x0000000A,
                0x0000000A,
                0x00000E00,
                0x00000E00
            },

            Package (0x06)
            {
                0x00000514,
                0x00005D5C,
                0x0000000A,
                0x0000000A,
                0x00000D00,
                0x00000D00
            },

            Package (0x06)
            {
                0x000004B0,
                0x0000546D,
                0x0000000A,
                0x0000000A,
                0x00000C00,
                0x00000C00
            },

            Package (0x06)
            {
                0x0000044C,
                0x00004D3F,
                0x0000000A,
                0x0000000A,
                0x00000B00,
                0x00000B00
            },

            Package (0x06)
            {
                0x000003E8,
                0x000044AE,
                0x0000000A,
                0x0000000A,
                0x00000A00,
                0x00000A00
            },

            Package (0x06)
            {
                0x00000384,
                0x00003C4D,
                0x0000000A,
                0x0000000A,
                0x00000900,
                0x00000900
            },

            Package (0x06)
            {
                0x00000320,
                0x0000359B,
                0x0000000A,
                0x0000000A,
                0x00000800,
                0x00000800
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
