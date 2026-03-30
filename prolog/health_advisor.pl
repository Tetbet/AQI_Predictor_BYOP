% ==========================================
% AQI HEALTH ADVISORY EXPERT SYSTEM (PROLOG)
% ==========================================
% This knowledge base uses the AQI predicted by the Machine Learning model
% to logically deduce the health category and advise necessary precautions.

% --- RULES FOR CATEGORIZING AQI ---
% (If AQI is between X and Y, then Category is Z)
category(AQI, good) :- AQI >= 0, AQI =< 50.
category(AQI, satisfactory) :- AQI >= 51, AQI =< 100.
category(AQI, moderate) :- AQI >= 101, AQI =< 200.
category(AQI, poor) :- AQI >= 201, AQI =< 300.
category(AQI, very_poor) :- AQI >= 301, AQI =< 400.
category(AQI, severe) :- AQI >= 401.

% --- RULES FOR HEALTH PRECAUTIONS ---
% (Based on the category, what should a person do?)
action(good, 'Air quality is great. Enjoy outdoor activities!').
action(satisfactory, 'Minor breathing discomfort to sensitive people. Normal people are fine.').
action(moderate, 'Breathing discomfort to people with lungs, asthma, and heart diseases.').
action(poor, 'Avoid prolonged heavy exertion. Wear a standard mask outdoors.').
action(very_poor, 'Respiratory illness on prolonged exposure. Wear an N95 mask.').
action(severe, 'HEALTH EMERGENCY! Stay indoors. Purify indoor air.').

% --- COMPOUND GOAL / MAIN QUERY ---
% Input the predicted AQI to get a full health report.
health_report(AQI) :-
    category(AQI, Cat),
    action(Cat, Advice),
    nl,
    write('--- AQI HEALTH REPORT ---'), nl,
    write('Predicted AQI : '), write(AQI), nl,
    write('Category      : '), write(Cat), nl,
    write('Advice        : '), write(Advice), nl,
    write('-------------------------'), nl.
