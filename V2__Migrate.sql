INSERT INTO Region (REGNAME, AREANAME, TERNAME, TerTypeName)
SELECT REGNAME, AREANAME, TERNAME, TerTypeName
FROM ZNO;

INSERT INTO EO (EONAME, EOTYPENAME, EORegName, EOAreaName, EOTerName, EOParent)
SELECT EONAME, EOTYPENAME, EORegName, EOAreaName, EOTerName, EOParent
FROM ZNO;

INSERT INTO Person (OUTID, Birth, SEXTYPENAME, Year, REGTYPENAME, ClassProfileNAME, ClassLangName)
SELECT OUTID, Birth, SEXTYPENAME, Year, REGTYPENAME, ClassProfileNAME, ClassLangName
FROM ZNO;

INSERT INTO Ukr (OUTID, UkrTest, UkrTestStatus, UkrBall100, UkrBall12, UkrBall, UkrAdaptScale, UkrPTName, UkrPTRegName, UkrPTAreaName, UkrPTTerName)
SELECT OUTID, UkrTest, UkrTestStatus, UkrBall100, UkrBall12, UkrBall, UkrAdaptScale, UkrPTName, UkrPTRegName, UkrPTAreaName, UkrPTTerName
FROM ZNO
WHERE UkrTest <> 'null';

INSERT INTO Hist (OUTID, histTest, HistLang, histTestStatus, histBall100, histBall12, histBall, histPTName, histPTRegName, histPTAreaName, histPTTerName)
SELECT OUTID, histTest, HistLang, histTestStatus, histBall100, histBall12, histBall, histPTName, histPTRegName, histPTAreaName, histPTTerName
FROM ZNO
WHERE histTest <> 'null';

INSERT INTO Math (OUTID, mathTest, mathLang, mathTestStatus, mathBall100, mathBall12, mathBall, mathPTName, mathPTRegName, mathPTAreaName, mathPTTerName)
SELECT OUTID, mathTest, mathLang, mathTestStatus, mathBall100, mathBall12, mathBall, mathPTName, mathPTRegName, mathPTAreaName, mathPTTerName
FROM ZNO
WHERE mathTest <> 'null';

INSERT INTO Phys (OUTID, physTest, physLang, physTestStatus, physBall100, physBall12, physBall, physPTName, physPTRegName, physPTAreaName, physPTTerName)
SELECT OUTID, physTest, physLang, physTestStatus, physBall100, physBall12, physBall, physPTName, physPTRegName, physPTAreaName, physPTTerName
FROM ZNO
WHERE physTest <> 'null';

INSERT INTO Chem (OUTID, chemTest, chemLang, chemTestStatus, chemBall100, chemBall12, chemBall, chemPTName, chemPTRegName, chemPTAreaName, chemPTTerName)
SELECT OUTID, chemTest, chemLang, chemTestStatus, chemBall100, chemBall12, chemBall, chemPTName, chemPTRegName, chemPTAreaName, chemPTTerName
FROM ZNO
WHERE chemTest <> 'null';

INSERT INTO Bio (OUTID, bioTest, bioLang, bioTestStatus, bioBall100, bioBall12, bioBall, bioPTName, bioPTRegName, bioPTAreaName, bioPTTerName)
SELECT OUTID, bioTest, bioLang, bioTestStatus, bioBall100, bioBall12, bioBall, bioPTName, bioPTRegName, bioPTAreaName, bioPTTerName
FROM ZNO
WHERE bioTest <> 'null';

INSERT INTO Geo (OUTID, geoTest, geoLang, geoTestStatus, geoBall100, geoBall12, geoBall, geoPTName, geoPTRegName, geoPTAreaName, geoPTTerName)
SELECT OUTID, geoTest, geoLang, geoTestStatus, geoBall100, geoBall12, geoBall, geoPTName, geoPTRegName, geoPTAreaName, geoPTTerName
FROM ZNO
WHERE geoTest <> 'null';

INSERT INTO Eng (OUTID, engTest, engTestStatus, engBall100, engBall12, engDPALevel, engBall, engPTName, engPTRegName, engPTAreaName, engPTTerName)
SELECT OUTID, engTest, engTestStatus, engBall100, engBall12, engDPALevel, engBall, engPTName, engPTRegName, engPTAreaName, engPTTerName
FROM ZNO
WHERE engTest <> 'null';

INSERT INTO Fra (OUTID, fraTest, fraTestStatus, fraBall100, fraBall12, fraDPALevel, fraBall, fraPTName, fraPTRegName, fraPTAreaName, fraPTTerName)
SELECT OUTID, fraTest, fraTestStatus, fraBall100, fraBall12, fraDPALevel, fraBall, fraPTName, fraPTRegName, fraPTAreaName, fraPTTerName
FROM ZNO
WHERE fraTest <> 'null';

INSERT INTO Deu (OUTID, deuTest, deuTestStatus, deuBall100, deuBall12, deuDPALevel, deuBall, deuPTName, deuPTRegName, deuPTAreaName, deuPTTerName)
SELECT OUTID, deuTest, deuTestStatus, deuBall100, deuBall12, deuDPALevel, deuBall, deuPTName, deuPTRegName, deuPTAreaName, deuPTTerName
FROM ZNO
WHERE deuTest <> 'null';

INSERT INTO Spa (OUTID, spaTest, spaTestStatus, spaBall100, spaBall12, spaDPALevel, spaBall, spaPTName, spaPTRegName, spaPTAreaName, spaPTTerName)
SELECT OUTID, spaTest, spaTestStatus, spaBall100, spaBall12, spaDPALevel, spaBall, spaPTName, spaPTRegName, spaPTAreaName, spaPTTerName
FROM ZNO
WHERE spaTest <> 'null';