.class Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPersonId;
.super Ljava/lang/Object;
.source "FaceRecognizerFactory.java"

# interfaces
.implements Lcom/scalado/caps/facerecognition/PersonId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/facerecognition/FaceRecognizerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardPersonId"
.end annotation


# instance fields
.field private id:[B


# direct methods
.method private constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPersonId;->id:[B

    iput-object p1, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPersonId;->id:[B

    return-void
.end method

.method synthetic constructor <init>([BLcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPersonId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPersonId;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPersonId;->id:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method
