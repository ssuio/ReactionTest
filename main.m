function main(fileName, data)
    fid = fopen( fileName, 'w' );
    fprintf(fid, join(string(data), ', '));
    fclose( fid );