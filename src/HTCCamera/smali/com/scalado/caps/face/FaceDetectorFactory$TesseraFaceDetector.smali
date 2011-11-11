.class Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;
.super Lcom/scalado/caps/PeerBase;
.source "FaceDetectorFactory.java"

# interfaces
.implements Lcom/scalado/caps/face/FaceDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/face/FaceDetectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TesseraFaceDetector"
.end annotation


# instance fields
.field private faceCollection:Lcom/scalado/caps/face/FaceCollection;


# direct methods
.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    new-instance v0, Lcom/scalado/caps/face/FaceCollection;

    invoke-direct {v0}, Lcom/scalado/caps/face/FaceCollection;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    invoke-direct {p0, p1}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeCreate(Z)I

    return-void
.end method

.method synthetic constructor <init>(ZLcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;-><init>(Z)V

    return-void
.end method

.method private native nativeCreate(Z)I
.end method

.method private native nativeDetect(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)I
.end method

.method private native nativeGetColormode()Lcom/scalado/base/Image$Config;
.end method

.method private native nativeGetDetectableFeatures()I
.end method

.method private native nativeGetFaces([Lcom/scalado/caps/face/Face;)I
.end method

.method private native nativeGetNumberOfFaces()I
.end method

.method private native nativeSetFeaturesToDetect(I)I
.end method


# virtual methods
.method public detectFaces(Lcom/scalado/base/Image;)Lcom/scalado/caps/face/FaceCollection;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->detectFaces(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)Lcom/scalado/caps/face/FaceCollection;

    move-result-object v0

    return-object v0
.end method

.method public detectFaces(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)Lcom/scalado/caps/face/FaceCollection;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Image is null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeDetect(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)I

    invoke-direct {p0}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeGetNumberOfFaces()I

    move-result v0

    iget-object v1, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FaceCollection;->getMaxSize()I

    move-result v1

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    iget-object v2, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    invoke-virtual {v2}, Lcom/scalado/caps/face/FaceCollection;->getMaxSize()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/scalado/caps/face/FaceCollection;->increaseSize(I)V

    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FaceCollection;->clear()V

    iget-object v1, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FaceCollection;->getFaceArray()[Lcom/scalado/caps/face/Face;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeGetFaces([Lcom/scalado/caps/face/Face;)I

    iget-object v1, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    invoke-virtual {v1, v0}, Lcom/scalado/caps/face/FaceCollection;->setActualSize(I)V

    iget-object v1, p0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->faceCollection:Lcom/scalado/caps/face/FaceCollection;

    return-object v1
.end method

.method public getDetectableFeatures()Lcom/scalado/caps/face/FeatureSet;
    .locals 2

    invoke-direct {p0}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeGetDetectableFeatures()I

    move-result v0

    new-instance v1, Lcom/scalado/caps/face/FeatureSet;

    invoke-direct {v1, v0}, Lcom/scalado/caps/face/FeatureSet;-><init>(I)V

    return-object v1
.end method

.method public getSupportedImageColorFormat()Lcom/scalado/base/Image$Config;
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeGetColormode()Lcom/scalado/base/Image$Config;

    move-result-object v0

    return-object v0
.end method

.method public setFeaturesToDetect(Lcom/scalado/caps/face/FeatureSet;)V
    .locals 1

    invoke-virtual {p1}, Lcom/scalado/caps/face/FeatureSet;->getNativeSet()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;->nativeSetFeaturesToDetect(I)I

    return-void
.end method
