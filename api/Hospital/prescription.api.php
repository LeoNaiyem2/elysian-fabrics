<?php
class PrescriptionApi{


    function save($data){ 

        $p=new HmsPrescription();
        $p->patient_id=$data->patient_id;
        $p->consultant_id=$data->consultant_id;
        $p->cc=$data->cc;
        $p->rf=$data->rf;
        $p->investigation=$data->investigation;
        $p->advice=$data->advice;

        $prescription_id=$p->save();

        $medicines=$data->medicines;

        foreach($medicines as  $medicine){          

            $pd=new HmsPrescriptionDetail();
            $pd->prescription_id=$prescription_id;
            $pd->medicine_id=$medicine->medicine_id;
            $pd->dose=$medicine->dose;
            $pd->days=$medicine->days;
            $pd->suggestion=$medicine->suggestion;
            $pd->medicine_name=$medicine->medicine_name;
            $pd->save();

             
        }


       echo "Successfully Saved!";

    }

}