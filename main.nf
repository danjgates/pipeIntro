
process pullNCBI {
    output:
    path "tomato.metadata"

    """
    datasets summary genome accession GCF_000188115.5  > tomato.metadata
    """
}

process convertToUpper {

    input:
    path x

    """
    cat $x | tr '[a-z]' '[A-Z]' > tomato.info
    """
}

workflow {
    pullNCBI  | convertToUpper 
}
