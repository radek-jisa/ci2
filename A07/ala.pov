#declare BAS = true;
#declare TRANS = false;
#include "babel_povray3.inc"

//Coodinates of atoms 1 - 13
#declare mol_0_pos_1 = <0.9326,-0.0113182,-0.0736941>;
#declare mol_0_pos_2 = <2.4455,-0.0181004,0.0746741>;
#declare mol_0_pos_3 = <3.10921,-0.098916,-1.25985>;
#declare mol_0_pos_4 = <2.9523,1.24545,0.791263>;
#declare mol_0_pos_5 = <2.39719,1.81132,1.71786>;
#declare mol_0_pos_6 = <4.14613,1.64612,0.27555>;
#declare mol_0_pos_7 = <0.583802,-0.917134,-0.580603>;
#declare mol_0_pos_8 = <0.586953,0.85803,-0.643531>;
#declare mol_0_pos_9 = <0.449066,0.0285336,0.908391>;
#declare mol_0_pos_10 = <2.76874,-0.878918,0.670482>;
#declare mol_0_pos_11 = <2.67508,0.600351,-1.87312>;
#declare mol_0_pos_12 = <2.84526,-0.99333,-1.68404>;
#declare mol_0_pos_13 = <4.34243,1.0212,-0.46696>;

//Povray-description of atoms 1 - 13
#declare mol_0_atom1 = object {
	  Atom_C
	  translate mol_0_pos_1
	 }
#declare mol_0_atom2 = object {
	  Atom_C
	  translate mol_0_pos_2
	 }
#declare mol_0_atom3 = object {
	  Atom_N
	  translate mol_0_pos_3
	 }
#declare mol_0_atom4 = object {
	  Atom_C
	  translate mol_0_pos_4
	 }
#declare mol_0_atom5 = object {
	  Atom_O
	  translate mol_0_pos_5
	 }
#declare mol_0_atom6 = object {
	  Atom_O
	  translate mol_0_pos_6
	 }
#declare mol_0_atom7 = object {
	  Atom_H
	  translate mol_0_pos_7
	 }
#declare mol_0_atom8 = object {
	  Atom_H
	  translate mol_0_pos_8
	 }
#declare mol_0_atom9 = object {
	  Atom_H
	  translate mol_0_pos_9
	 }
#declare mol_0_atom10 = object {
	  Atom_H
	  translate mol_0_pos_10
	 }
#declare mol_0_atom11 = object {
	  Atom_H
	  translate mol_0_pos_11
	 }
#declare mol_0_atom12 = object {
	  Atom_H
	  translate mol_0_pos_12
	 }
#declare mol_0_atom13 = object {
	  Atom_H
	  translate mol_0_pos_13
	 }

//Povray-description of bonds 1 - 12
#if (BAS)
#declare mol_0_bond0 = object {
	  bond_1
	  scale <1.52018,1.0000,1.0000>
	  rotate <0.0000,0.0000,-0.255623>
	  rotate <0.0000,-5.601,0.0000>
	  translate mol_0_pos_1
	 }
#declare mol_0_bond1 = object {
	  bond_1
	  scale <1.49264,1.0000,1.0000>
	  rotate <0.0000,0.0000,-3.10366>
	  rotate <0.0000,63.5571,0.0000>
	  translate mol_0_pos_2
	 }
#declare mol_0_bond2 = object {
	  bond_1
	  scale <1.53847,1.0000,1.0000>
	  rotate <0.0000,0.0000,55.2152>
	  rotate <0.0000,-54.7307,0.0000>
	  translate mol_0_pos_2
	 }
#declare mol_0_bond3 = object {
	  bond_2
	  scale <1.21941,1.0000,1.0000>
	  rotate <0.0000,0.0000,27.6491>
	  rotate <0.0000,-120.925,0.0000>
	  translate mol_0_pos_4
	 }
#declare mol_0_bond4 = object {
	  bond_1
	  scale <1.36078,1.0000,1.0000>
	  rotate <0.0000,0.0000,17.1242>
	  rotate <0.0000,23.3635,0.0000>
	  translate mol_0_pos_4
	 }
#declare mol_0_bond5 = object {
	  bond_1
	  scale <1.09504,1.0000,1.0000>
	  rotate <0.0000,0.0000,-55.8118>
	  rotate <0.0000,124.531,0.0000>
	  translate mol_0_pos_1
	 }
#declare mol_0_bond6 = object {
	  bond_1
	  scale <1.09542,1.0000,1.0000>
	  rotate <0.0000,0.0000,52.525>
	  rotate <0.0000,121.24,0.0000>
	  translate mol_0_pos_1
	 }
#declare mol_0_bond7 = object {
	  bond_1
	  scale <1.09539,1.0000,1.0000>
	  rotate <0.0000,0.0000,2.08496>
	  rotate <0.0000,-116.214,0.0000>
	  translate mol_0_pos_1
	 }
#declare mol_0_bond8 = object {
	  bond_1
	  scale <1.09566,1.0000,1.0000>
	  rotate <0.0000,0.0000,-51.7817>
	  rotate <0.0000,-61.5193,0.0000>
	  translate mol_0_pos_2
	 }
#declare mol_0_bond9 = object {
	  bond_1
	  scale <1.02643,1.0000,1.0000>
	  rotate <0.0000,0.0000,42.9424>
	  rotate <0.0000,125.295,0.0000>
	  translate mol_0_pos_3
	 }
#declare mol_0_bond10 = object {
	  bond_1
	  scale <1.02449,1.0000,1.0000>
	  rotate <0.0000,0.0000,-60.8127>
	  rotate <0.0000,121.892,0.0000>
	  translate mol_0_pos_3
	 }
#declare mol_0_bond11 = object {
	  bond_1
	  scale <0.99014,1.0000,1.0000>
	  rotate <0.0000,0.0000,-39.1343>
	  rotate <0.0000,75.1911,0.0000>
	  translate mol_0_pos_6
	 }
#end //(BAS-Bonds)

#if (CST)
#declare mol_0_bond0 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.760089,1.0000,1.0000>
	    rotate <0.0000,0.0000,-0.255623>
	    rotate <0.0000,-5.601,0.0000>
	    translate mol_0_pos_1
	   }
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.760089,1.0000,1.0000>
	    rotate <0.0000,0.0000,179.744>
	    rotate <0.0000,-5.601,0.0000>
	    translate mol_0_pos_2
	   }
	  }
	 }

#declare mol_0_bond1 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.746322,1.0000,1.0000>
	    rotate <0.0000,0.0000,-3.10366>
	    rotate <0.0000,63.5571,0.0000>
	    translate mol_0_pos_2
	   }
	   object {
	    bond_1
	    pigment{color Color_N3}
	    scale <0.746322,1.0000,1.0000>
	    rotate <0.0000,0.0000,176.896>
	    rotate <0.0000,63.5571,0.0000>
	    translate mol_0_pos_3
	   }
	  }
	 }

#declare mol_0_bond2 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.769236,1.0000,1.0000>
	    rotate <0.0000,0.0000,55.2152>
	    rotate <0.0000,-54.7307,0.0000>
	    translate mol_0_pos_2
	   }
	   object {
	    bond_1
	    pigment{color Color_C2}
	    scale <0.769236,1.0000,1.0000>
	    rotate <0.0000,0.0000,235.215>
	    rotate <0.0000,-54.7307,0.0000>
	    translate mol_0_pos_4
	   }
	  }
	 }

#declare mol_0_bond3 = object {
	  union {
	   object {
	    bond_2
	    pigment{color Color_C2}
	    scale <0.609703,1.0000,1.0000>
	    rotate <0.0000,0.0000,27.6491>
	    rotate <0.0000,-120.925,0.0000>
	    translate mol_0_pos_4
	   }
	   object {
	    bond_2
	    pigment{color Color_O2}
	    scale <0.609703,1.0000,1.0000>
	    rotate <0.0000,0.0000,207.649>
	    rotate <0.0000,-120.925,0.0000>
	    translate mol_0_pos_5
	   }
	  }
	 }

#declare mol_0_bond4 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C2}
	    scale <0.680391,1.0000,1.0000>
	    rotate <0.0000,0.0000,17.1242>
	    rotate <0.0000,23.3635,0.0000>
	    translate mol_0_pos_4
	   }
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.680391,1.0000,1.0000>
	    rotate <0.0000,0.0000,197.124>
	    rotate <0.0000,23.3635,0.0000>
	    translate mol_0_pos_6
	   }
	  }
	 }

#declare mol_0_bond5 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.547522,1.0000,1.0000>
	    rotate <0.0000,0.0000,-55.8118>
	    rotate <0.0000,124.531,0.0000>
	    translate mol_0_pos_1
	   }
	   object {
	    bond_1
	    pigment{color Color_H}
	    scale <0.547522,1.0000,1.0000>
	    rotate <0.0000,0.0000,124.188>
	    rotate <0.0000,124.531,0.0000>
	    translate mol_0_pos_7
	   }
	  }
	 }

#declare mol_0_bond6 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.547711,1.0000,1.0000>
	    rotate <0.0000,0.0000,52.525>
	    rotate <0.0000,121.24,0.0000>
	    translate mol_0_pos_1
	   }
	   object {
	    bond_1
	    pigment{color Color_H}
	    scale <0.547711,1.0000,1.0000>
	    rotate <0.0000,0.0000,232.525>
	    rotate <0.0000,121.24,0.0000>
	    translate mol_0_pos_8
	   }
	  }
	 }

#declare mol_0_bond7 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.547696,1.0000,1.0000>
	    rotate <0.0000,0.0000,2.08496>
	    rotate <0.0000,-116.214,0.0000>
	    translate mol_0_pos_1
	   }
	   object {
	    bond_1
	    pigment{color Color_H}
	    scale <0.547696,1.0000,1.0000>
	    rotate <0.0000,0.0000,182.085>
	    rotate <0.0000,-116.214,0.0000>
	    translate mol_0_pos_9
	   }
	  }
	 }

#declare mol_0_bond8 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.547831,1.0000,1.0000>
	    rotate <0.0000,0.0000,-51.7817>
	    rotate <0.0000,-61.5193,0.0000>
	    translate mol_0_pos_2
	   }
	   object {
	    bond_1
	    pigment{color Color_H}
	    scale <0.547831,1.0000,1.0000>
	    rotate <0.0000,0.0000,128.218>
	    rotate <0.0000,-61.5193,0.0000>
	    translate mol_0_pos_10
	   }
	  }
	 }

#declare mol_0_bond9 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_N3}
	    scale <0.513214,1.0000,1.0000>
	    rotate <0.0000,0.0000,42.9424>
	    rotate <0.0000,125.295,0.0000>
	    translate mol_0_pos_3
	   }
	   object {
	    bond_1
	    pigment{color Color_H}
	    scale <0.513214,1.0000,1.0000>
	    rotate <0.0000,0.0000,222.942>
	    rotate <0.0000,125.295,0.0000>
	    translate mol_0_pos_11
	   }
	  }
	 }

#declare mol_0_bond10 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_N3}
	    scale <0.512247,1.0000,1.0000>
	    rotate <0.0000,0.0000,-60.8127>
	    rotate <0.0000,121.892,0.0000>
	    translate mol_0_pos_3
	   }
	   object {
	    bond_1
	    pigment{color Color_H}
	    scale <0.512247,1.0000,1.0000>
	    rotate <0.0000,0.0000,119.187>
	    rotate <0.0000,121.892,0.0000>
	    translate mol_0_pos_12
	   }
	  }
	 }

#declare mol_0_bond11 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.49507,1.0000,1.0000>
	    rotate <0.0000,0.0000,-39.1343>
	    rotate <0.0000,75.1911,0.0000>
	    translate mol_0_pos_6
	   }
	   object {
	    bond_1
	    pigment{color Color_HO}
	    scale <0.49507,1.0000,1.0000>
	    rotate <0.0000,0.0000,140.866>
	    rotate <0.0000,75.1911,0.0000>
	    translate mol_0_pos_13
	   }
	  }
	 }

#end // (CST-Bonds)


//All atoms of molecule mol_0
#ifdef (TRANS)
#declare mol_0_atoms = merge {
#else
#declare mol_0_atoms = union {
#end //(End of TRANS)
	  object{mol_0_atom1}
	  object{mol_0_atom2}
	  object{mol_0_atom3}
	  object{mol_0_atom4}
	  object{mol_0_atom5}
	  object{mol_0_atom6}
	  object{mol_0_atom7}
	  object{mol_0_atom8}
	  object{mol_0_atom9}
	  object{mol_0_atom10}
	  object{mol_0_atom11}
	  object{mol_0_atom12}
	  object{mol_0_atom13}
	 }

//Bonds only needed for ball and sticks or capped sticks models
#if (BAS | CST)
#declare mol_0_bonds = union {
	  object{mol_0_bond0}
	  object{mol_0_bond1}
	  object{mol_0_bond2}
	  object{mol_0_bond3}
	  object{mol_0_bond4}
	  object{mol_0_bond5}
	  object{mol_0_bond6}
	  object{mol_0_bond7}
	  object{mol_0_bond8}
	  object{mol_0_bond9}
	  object{mol_0_bond10}
	  object{mol_0_bond11}
	 }
#end


//Definition of molecule mol_0
#if (SPF)
#declare mol_0 = object{
	  mol_0_atoms
#else
#declare mol_0 = union {
	  object{mol_0_atoms}
#if (BAS | CST)//(Not really needed at moment!)
#if (TRANS)
	  difference {
	   object{mol_0_bonds}
	   object{mol_0_atoms}
	  }
#else
	  object{mol_0_bonds}
#end //(End of TRANS)
#end //(End of (BAS|CST))
#end //(End of SPF)
//	  bounded_by {
//	   box {
//	    <-3,-3.99333,-4.87312>
//	    <7.34243,4.81132,4.71786>
	 }

//Center of molecule mol_0 (bounding box)
#declare mol_0_center = <-2.17122,-0.408995,0.0776288>;

#declare ala = object { mol_0 }
