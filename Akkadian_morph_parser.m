
%% PARSER INVERSO PER MORFOLOGIA ACCADICA
%Spoglia la parola da prefissi/vocali e isola C1-C2-C3 (cioè le consonanti trilittere)

clear all
clear;
clc;

%% Parola accadica in input da analizzare
parolaInput = 'iprus'; % Prova anche con: 'parasu', 'parisu', 'pirsu'

fprintf('--- ANALISI INVERSA DELLA PAROLA: "%s" ---\n\n', parolaInput);

% Matrice dei Pattern Morfologici (Regex e Regole)
% Colonne: [Nome Forma, Pattern RegEx, Posizione dei Token Consonantici]
% Nelle RegEx: ([a-z]) cattura una generica consonante C
patterns = {
    'Infinito',   '^([a-z])a([a-z])a([a-z])u$',   'Radice pura all''infinito';
    'Passato',    '^i-?([a-z])([a-z])u([a-z])$',  '3a pers. sing. passato (I-C1C2uC3)';
    'Sostantivo', '^([a-z])a([a-z])i([a-z])u$',   'Nome d''agente (C1aC2iC3u)';
    'Derivato',   '^([a-z])i([a-z])([a-z])u$',    'Sostantivo astratto/risultato (C1iC2C3u)'
};

trovato = false;

for i = 1:size(patterns, 1)
    nomeForma = patterns{i, 1};
    regexExpr = patterns{i, 2};
    descrizione = patterns{i, 3};
    
    % Applicazione del pattern di matching
    tokens = regexp(parolaInput, regexExpr, 'tokens');
    
    if ~isempty(tokens)
        % Estrazione delle 3 consonanti isolate (C1, C2, C3)
        c1 = upper(tokens{1}{1});
        c2 = upper(tokens{1}{2});
        c3 = upper(tokens{1}{3});
        
        fprintf('MATCH TROVATO!\n');
        fprintf('Forma Grammaticale: %s (%s)\n', nomeForma, descrizione);
        fprintf('Radice Trilittera:  %s-%s-%s\n\n', c1, c2, c3);
        
        trovato = true;
        break;
    end
end

if ~trovato
    fprintf('Errore: Impossibile risalire alla radice. Parola non riconosciuta dai pattern.\n');
end