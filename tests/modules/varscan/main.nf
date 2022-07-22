#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { VARSCAN } from '../../../modules/varscan/main.nf'

workflow test_varscan {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    VARSCAN ( input )
}
