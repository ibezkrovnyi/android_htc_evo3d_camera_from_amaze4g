.class public interface abstract Lcom/scalado/caps/face/FaceDetector;
.super Ljava/lang/Object;
.source "FaceDetector.java"


# virtual methods
.method public abstract detectFaces(Lcom/scalado/base/Image;)Lcom/scalado/caps/face/FaceCollection;
.end method

.method public abstract detectFaces(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)Lcom/scalado/caps/face/FaceCollection;
.end method

.method public abstract getDetectableFeatures()Lcom/scalado/caps/face/FeatureSet;
.end method

.method public abstract getSupportedImageColorFormat()Lcom/scalado/base/Image$Config;
.end method

.method public abstract setFeaturesToDetect(Lcom/scalado/caps/face/FeatureSet;)V
.end method
