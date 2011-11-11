.class public Lcom/scalado/caps/face/FaceDetectorFactory;
.super Ljava/lang/Object;
.source "FaceDetectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFaceDetector(Z)Lcom/scalado/caps/face/FaceDetector;
    .locals 2

    new-instance v0, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;-><init>(ZLcom/scalado/caps/face/FaceDetectorFactory$TesseraFaceDetector;)V

    return-object v0
.end method
