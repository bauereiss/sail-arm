chapter \<open>Generated by Lem from \<open>../../src/gen_lib/sail2_undefined.lem\<close>.\<close>

theory "Sail2_undefined" 

imports
  Main
  "LEM.Lem_pervasives_extra"
  "Sail2_values"
  "Sail2_prompt_monad"
  "Sail2_prompt"

begin 

\<comment> \<open>\<open>open import Pervasives_extra\<close>\<close>
\<comment> \<open>\<open>open import Sail2_values\<close>\<close>
\<comment> \<open>\<open>open import Sail2_prompt_monad\<close>\<close>
\<comment> \<open>\<open>open import Sail2_prompt\<close>\<close>

\<comment> \<open>\<open> Default implementations of "undefined" functions for builtin types via
   nondeterministic choice, for use with the -undefined_gen option of Sail.

   Changes here need to be reflected in ../../lib/hol/sail2_undefined.lem
   (identical except for type class constraints). \<close>\<close>

\<comment> \<open>\<open>val undefined_bitvector : forall 'rv 'a 'e. Bitvector 'a, Register_Value 'rv => integer -> monad 'rv 'a 'e\<close>\<close>
definition undefined_bitvector  :: \<open> 'a Bitvector_class \<Rightarrow> 'rv Register_Value_class \<Rightarrow> int \<Rightarrow>('rv,'a,'e)monad \<close>  where 
     \<open> undefined_bitvector dict_Sail2_values_Bitvector_a dict_Sail2_values_Register_Value_rv n = ( choose_bitvector 
  dict_Sail2_values_Bitvector_a dict_Sail2_values_Register_Value_rv (''undefined_bitvector'') (nat (abs ( n))))\<close> 
  for  "dict_Sail2_values_Bitvector_a"  :: " 'a Bitvector_class " 
  and  "dict_Sail2_values_Register_Value_rv"  :: " 'rv Register_Value_class " 
  and  "n"  :: " int "


definition undefined_unit  :: \<open> unit \<Rightarrow>('b,(unit),'a)monad \<close>  where 
     \<open> undefined_unit _ = ( return ()  )\<close>

definition undefined_bits  :: \<open> 'b Bitvector_class \<Rightarrow> 'c Register_Value_class \<Rightarrow> int \<Rightarrow>('c,'b,'a)monad \<close>  where 
     \<open> undefined_bits dict_Sail2_values_Bitvector_b dict_Sail2_values_Register_Value_c = ( 
  undefined_bitvector dict_Sail2_values_Bitvector_b
    dict_Sail2_values_Register_Value_c )\<close> 
  for  "dict_Sail2_values_Bitvector_b"  :: " 'b Bitvector_class " 
  and  "dict_Sail2_values_Register_Value_c"  :: " 'c Register_Value_class "

definition undefined_bit  :: \<open> 'b Register_Value_class \<Rightarrow> unit \<Rightarrow>('b,(bitU),'a)monad \<close>  where 
     \<open> undefined_bit dict_Sail2_values_Register_Value_b _ = ( choose_bit 
  dict_Sail2_values_Register_Value_b (''undefined_bit''))\<close> 
  for  "dict_Sail2_values_Register_Value_b"  :: " 'b Register_Value_class "

definition undefined_bool  :: \<open> 'b Register_Value_class \<Rightarrow> unit \<Rightarrow>('b,(bool),'a)monad \<close>  where 
     \<open> undefined_bool dict_Sail2_values_Register_Value_b _ = ( choose_bool 
  dict_Sail2_values_Register_Value_b (''undefined_bool''))\<close> 
  for  "dict_Sail2_values_Register_Value_b"  :: " 'b Register_Value_class "

definition undefined_string  :: \<open> 'b Register_Value_class \<Rightarrow> unit \<Rightarrow>('b,(string),'a)monad \<close>  where 
     \<open> undefined_string dict_Sail2_values_Register_Value_b _ = ( choose_string 
  dict_Sail2_values_Register_Value_b (''undefined_string''))\<close> 
  for  "dict_Sail2_values_Register_Value_b"  :: " 'b Register_Value_class "

definition undefined_int  :: \<open> 'b Register_Value_class \<Rightarrow> unit \<Rightarrow>('b,(int),'a)monad \<close>  where 
     \<open> undefined_int dict_Sail2_values_Register_Value_b _ = ( choose_int 
  dict_Sail2_values_Register_Value_b (''undefined_int''))\<close> 
  for  "dict_Sail2_values_Register_Value_b"  :: " 'b Register_Value_class "

definition undefined_nat  :: \<open> 'b Register_Value_class \<Rightarrow> unit \<Rightarrow>('b,(int),'a)monad \<close>  where 
     \<open> undefined_nat dict_Sail2_values_Register_Value_b _ = ( choose_nat 
  dict_Sail2_values_Register_Value_b (''undefined_nat''))\<close> 
  for  "dict_Sail2_values_Register_Value_b"  :: " 'b Register_Value_class "

definition undefined_real  :: \<open> 'b Register_Value_class \<Rightarrow> unit \<Rightarrow>('b,(real),'a)monad \<close>  where 
     \<open> undefined_real dict_Sail2_values_Register_Value_b _ = ( choose_real 
  dict_Sail2_values_Register_Value_b (''undefined_real''))\<close> 
  for  "dict_Sail2_values_Register_Value_b"  :: " 'b Register_Value_class "

definition undefined_range  :: \<open> 'b Register_Value_class \<Rightarrow> int \<Rightarrow> int \<Rightarrow>('b,(int),'a)monad \<close>  where 
     \<open> undefined_range dict_Sail2_values_Register_Value_b i j = ( choose_int_in_range 
  dict_Sail2_values_Register_Value_b (''undefined_range'') i j )\<close> 
  for  "dict_Sail2_values_Register_Value_b"  :: " 'b Register_Value_class " 
  and  "i"  :: " int " 
  and  "j"  :: " int "

definition undefined_atom  :: \<open> 'a \<Rightarrow>('c,'a,'b)monad \<close>  where 
     \<open> undefined_atom i = ( return i )\<close> 
  for  "i"  :: " 'a "


\<comment> \<open>\<open> TODO: Choose each vector element individually \<close>\<close>
\<comment> \<open>\<open>val undefined_vector : forall 'rv 'a 'e. integer -> 'a -> monad 'rv (list 'a) 'e\<close>\<close>
definition undefined_vector  :: \<open> int \<Rightarrow> 'a \<Rightarrow>('rv,('a list),'e)monad \<close>  where 
     \<open> undefined_vector len u = ( return (repeat [u] len))\<close> 
  for  "len"  :: " int " 
  and  "u"  :: " 'a "

end
