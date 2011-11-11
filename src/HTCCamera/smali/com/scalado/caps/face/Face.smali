.class public Lcom/scalado/caps/face/Face;
.super Ljava/lang/Object;
.source "Face.java"


# instance fields
.field private blinkPercent:I

.field private centralEyePoint:Lcom/scalado/base/Point;

.field private centralEyePointActive:Z

.field private faceRect:Lcom/scalado/base/Rect;

.field private faceRectActive:Z

.field private id:I

.field private leftEyePoint:Lcom/scalado/base/Point;

.field private leftEyePointActive:Z

.field private leftEyeRect:Lcom/scalado/base/Rect;

.field private leftEyeRectActive:Z

.field private mouthRect:Lcom/scalado/base/Rect;

.field private mouthRectActive:Z

.field private noseRect:Lcom/scalado/base/Rect;

.field private noseRectActive:Z

.field private rightEyePoint:Lcom/scalado/base/Point;

.field private rightEyePointActive:Z

.field private rightEyeRect:Lcom/scalado/base/Rect;

.field private rightEyeRectActive:Z

.field private smilePercent:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->faceRectActive:Z

    iput-object v1, p0, Lcom/scalado/caps/face/Face;->centralEyePoint:Lcom/scalado/base/Point;

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->centralEyePointActive:Z

    iput-object v1, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRectActive:Z

    iput-object v1, p0, Lcom/scalado/caps/face/Face;->leftEyePoint:Lcom/scalado/base/Point;

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyePointActive:Z

    iput-object v1, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRectActive:Z

    iput-object v1, p0, Lcom/scalado/caps/face/Face;->rightEyePoint:Lcom/scalado/base/Point;

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyePointActive:Z

    iput-object v1, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->mouthRectActive:Z

    iput-object v1, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->noseRectActive:Z

    iput v2, p0, Lcom/scalado/caps/face/Face;->id:I

    iput v2, p0, Lcom/scalado/caps/face/Face;->smilePercent:I

    iput v2, p0, Lcom/scalado/caps/face/Face;->blinkPercent:I

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->centralEyePoint:Lcom/scalado/base/Point;

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyePoint:Lcom/scalado/base/Point;

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyePoint:Lcom/scalado/base/Point;

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    iput v2, p0, Lcom/scalado/caps/face/Face;->id:I

    iput v2, p0, Lcom/scalado/caps/face/Face;->smilePercent:I

    iput v2, p0, Lcom/scalado/caps/face/Face;->blinkPercent:I

    return-void
.end method

.method private setCentralEyePoint(II)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->centralEyePoint:Lcom/scalado/base/Point;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Point;->setX(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->centralEyePoint:Lcom/scalado/base/Point;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Point;->setY(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->centralEyePointActive:Z

    return-void
.end method

.method private setFaceRect(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Rect;->setX(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Rect;->setY(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p3}, Lcom/scalado/base/Rect;->setWidth(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p4}, Lcom/scalado/base/Rect;->setHeight(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->faceRectActive:Z

    return-void
.end method

.method private setLeftEyePoint(II)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyePoint:Lcom/scalado/base/Point;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Point;->setX(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyePoint:Lcom/scalado/base/Point;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Point;->setY(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyePointActive:Z

    return-void
.end method

.method private setLeftEyeRect(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Rect;->setX(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Rect;->setY(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p3}, Lcom/scalado/base/Rect;->setWidth(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p4}, Lcom/scalado/base/Rect;->setHeight(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRectActive:Z

    return-void
.end method

.method private setMouthRect(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Rect;->setX(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Rect;->setY(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p3}, Lcom/scalado/base/Rect;->setWidth(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p4}, Lcom/scalado/base/Rect;->setHeight(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->mouthRectActive:Z

    return-void
.end method

.method private setNoseRect(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Rect;->setX(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Rect;->setY(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p3}, Lcom/scalado/base/Rect;->setWidth(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p4}, Lcom/scalado/base/Rect;->setHeight(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->noseRectActive:Z

    return-void
.end method

.method private setRightEyePoint(II)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyePoint:Lcom/scalado/base/Point;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Point;->setX(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyePoint:Lcom/scalado/base/Point;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Point;->setY(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyePointActive:Z

    return-void
.end method

.method private setRightEyeRect(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Rect;->setX(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Rect;->setY(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p3}, Lcom/scalado/base/Rect;->setWidth(I)V

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p4}, Lcom/scalado/base/Rect;->setHeight(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRectActive:Z

    return-void
.end method


# virtual methods
.method public getBlinkPercent()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/face/Face;->blinkPercent:I

    return v0
.end method

.method public getCentralEyePoint()Lcom/scalado/base/Point;
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->centralEyePointActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->centralEyePoint:Lcom/scalado/base/Point;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFaceRect()Lcom/scalado/base/Rect;
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->faceRectActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/face/Face;->id:I

    return v0
.end method

.method public getLeftEyePoint()Lcom/scalado/base/Point;
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyePointActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyePoint:Lcom/scalado/base/Point;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeftEyeRect()Lcom/scalado/base/Rect;
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRectActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMouthRect()Lcom/scalado/base/Rect;
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->mouthRectActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNoseRect()Lcom/scalado/base/Rect;
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->noseRectActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRightEyePoint()Lcom/scalado/base/Point;
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyePointActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyePoint:Lcom/scalado/base/Point;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRightEyeRect()Lcom/scalado/base/Rect;
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRectActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSmilePercent()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/face/Face;->smilePercent:I

    return v0
.end method

.method protected reset()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->faceRectActive:Z

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->centralEyePointActive:Z

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRectActive:Z

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyePointActive:Z

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRectActive:Z

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyePointActive:Z

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->mouthRectActive:Z

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->noseRectActive:Z

    iput v1, p0, Lcom/scalado/caps/face/Face;->id:I

    iput v1, p0, Lcom/scalado/caps/face/Face;->smilePercent:I

    iput v1, p0, Lcom/scalado/caps/face/Face;->blinkPercent:I

    return-void
.end method

.method public setBlinkPercent(I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "blinkPercent must be >= -1  and <= 100 !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/scalado/caps/face/Face;->blinkPercent:I

    return-void
.end method

.method public setCentralEyePoint(Lcom/scalado/base/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/scalado/caps/face/Face;->centralEyePoint:Lcom/scalado/base/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->centralEyePointActive:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->centralEyePointActive:Z

    goto :goto_0
.end method

.method public setFaceRect(Lcom/scalado/base/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->faceRectActive:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->faceRectActive:Z

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/caps/face/Face;->id:I

    return-void
.end method

.method public setLeftEyePoint(Lcom/scalado/base/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/scalado/caps/face/Face;->leftEyePoint:Lcom/scalado/base/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyePointActive:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyePointActive:Z

    goto :goto_0
.end method

.method public setLeftEyeRect(Lcom/scalado/base/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/scalado/caps/face/Face;->leftEyeRect:Lcom/scalado/base/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRectActive:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->leftEyeRectActive:Z

    goto :goto_0
.end method

.method public setMouthRect(Lcom/scalado/base/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/scalado/caps/face/Face;->mouthRect:Lcom/scalado/base/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->mouthRectActive:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->mouthRectActive:Z

    goto :goto_0
.end method

.method public setNoseRect(Lcom/scalado/base/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/scalado/caps/face/Face;->noseRect:Lcom/scalado/base/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->noseRectActive:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->noseRectActive:Z

    goto :goto_0
.end method

.method public setRightEyePoint(Lcom/scalado/base/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/Face;->faceRect:Lcom/scalado/base/Rect;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/scalado/caps/face/Face;->rightEyePoint:Lcom/scalado/base/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyePointActive:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyePointActive:Z

    goto :goto_0
.end method

.method public setRightEyeRect(Lcom/scalado/base/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/scalado/caps/face/Face;->rightEyeRect:Lcom/scalado/base/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRectActive:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/face/Face;->rightEyeRectActive:Z

    goto :goto_0
.end method

.method public setSmilePercent(I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "smilePercent must be >= -1  and <= 100 !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/scalado/caps/face/Face;->smilePercent:I

    return-void
.end method
