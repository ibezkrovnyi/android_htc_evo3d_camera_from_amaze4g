.class public interface abstract Lcom/scalado/caps/facerecognition/StillFaceRecognizer;
.super Ljava/lang/Object;
.source "StillFaceRecognizer.java"


# virtual methods
.method public abstract recognizeCluster(Lcom/scalado/caps/facerecognition/Cluster;I)[Lcom/scalado/caps/facerecognition/RecognitionResult;
.end method

.method public abstract recognizePerson(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;)Lcom/scalado/caps/facerecognition/RecognitionResult;
.end method

.method public abstract recognizePersonByProbability(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;I)[Lcom/scalado/caps/facerecognition/RecognitionResult;
.end method
