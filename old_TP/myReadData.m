function tab = myReadData(filename)
    % ouverture du fichier
    fid = fopen(filename);
    
    % lecture de la premiere ligne pour recuperer le nombre de champ
    ligne = fgetl(fid);
    ligne = fgetl(fid);
    nbRows = length(findstr(ligne,','));
    
    fclose (fid);
    fid = fopen(filename);
    
    % lecture du fichier. C : un cellarray
    format = repmat('%f',1,nbRows+1);
    C = textscan(fid, format,'HeaderLines',1,'Delimiter',',');
    %celldisp(C)
    
    % fermeture du fichier
    fclose (fid);
    
    % transformation du cellarray en array simple
    tab = cell2mat(C);
end