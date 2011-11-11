.class public interface abstract Lcom/scalado/caps/facerecognition/FaceDataBase;
.super Ljava/lang/Object;
.source "FaceDataBase.java"


# virtual methods
.method public abstract addFaceToClusterize(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;)V
.end method

.method public abstract clearClusteringData()V
.end method

.method public abstract clusterize()V
.end method

.method public abstract createPerson()Lcom/scalado/caps/facerecognition/Person;
.end method

.method public abstract getClusterCount()I
.end method

.method public abstract getClusteredFacesCount()I
.end method

.method public abstract getClusters()[Lcom/scalado/caps/facerecognition/Cluster;
.end method

.method public abstract getMaxNumPersons()I
.end method

.method public abstract getNumPersons()I
.end method

.method public abstract getPerson(Lcom/scalado/caps/facerecognition/PersonId;)Lcom/scalado/caps/facerecognition/Person;
.end method

.method public abstract getPersons()[Lcom/scalado/caps/facerecognition/Person;
.end method

.method public abstract removePerson(Lcom/scalado/caps/facerecognition/Person;)V
.end method
