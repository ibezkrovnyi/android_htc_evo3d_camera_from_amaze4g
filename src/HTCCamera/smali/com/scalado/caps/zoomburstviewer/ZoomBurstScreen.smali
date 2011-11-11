.class public Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;
.super Lcom/scalado/caps/PeerBase;
.source "ZoomBurstScreen.java"


# instance fields
.field private image:Lcom/scalado/base/Image;

.field private panX:F

.field private panY:F

.field private rotation:I

.field private zoom:F

.field private zoomBurstSession:Lcom/scalado/caps/zoomburstviewer/ZoomBurstSession;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/zoomburstviewer/ZoomBurstSession;Lcom/scalado/base/Image;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    sget-object v1, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-virtual {v1}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v1

    iput v1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->rotation:I

    iput v2, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->zoom:F

    iput v2, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->panX:F

    iput v2, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->panY:F

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p2}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p2}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_3
    invoke-virtual {p2}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v1

    sget-object v2, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    if-eq v1, v2, :cond_4

    invoke-virtual {p2}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v1

    sget-object v2, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    if-eq v1, v2, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_4
    iput-object p1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->zoomBurstSession:Lcom/scalado/caps/zoomburstviewer/ZoomBurstSession;

    iput-object p2, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->image:Lcom/scalado/base/Image;

    iget-object v1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->zoomBurstSession:Lcom/scalado/caps/zoomburstviewer/ZoomBurstSession;

    iget-object v2, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->image:Lcom/scalado/base/Image;

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstCreateScreen(Lcom/scalado/caps/zoomburstviewer/ZoomBurstSession;Lcom/scalado/base/Image;)I

    move-result v0

    return-void
.end method

.method private native nativeZoomBurstCoordCanvasToCurrent(Lcom/scalado/base/Point;)I
.end method

.method private native nativeZoomBurstCoordFromCurrent(Lcom/scalado/base/Point;)I
.end method

.method private native nativeZoomBurstCoordToCurrent(Lcom/scalado/base/Point;)I
.end method

.method private native nativeZoomBurstCreateScreen(Lcom/scalado/caps/zoomburstviewer/ZoomBurstSession;Lcom/scalado/base/Image;)I
.end method

.method private native nativeZoomBurstGetCanvasArea(Lcom/scalado/base/Rect;)I
.end method

.method private native nativeZoomBurstGetDimensions(Lcom/scalado/base/Size;)I
.end method

.method private native nativeZoomBurstGetImageBuffer()Ljava/nio/ByteBuffer;
.end method

.method private native nativeZoomBurstGetPan()I
.end method

.method private native nativeZoomBurstGetRotation()I
.end method

.method private native nativeZoomBurstGetZoom()I
.end method

.method private native nativeZoomBurstGetZoomPoint(Lcom/scalado/base/Point;)I
.end method

.method private native nativeZoomBurstRender()I
.end method

.method private native nativeZoomBurstSetBuffer(Lcom/scalado/base/Buffer;)I
.end method

.method private native nativeZoomBurstSetPan(FF)I
.end method

.method private native nativeZoomBurstSetRgbAdjust(FFF)I
.end method

.method private native nativeZoomBurstSetRotation(I)I
.end method

.method private native nativeZoomBurstSetSharpness(I)I
.end method

.method private native nativeZoomBurstSetZoom(F)I
.end method

.method private native nativeZoomBurstSetZoomPoint(FLcom/scalado/base/Point;)I
.end method

.method private native nativeZoomBurstSetZoomRect(Lcom/scalado/base/Rect;)I
.end method


# virtual methods
.method public coordCanvasToCurrent(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/scalado/base/Point;->clone()Lcom/scalado/base/Point;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstCoordCanvasToCurrent(Lcom/scalado/base/Point;)I

    move-result v0

    return-object v1
.end method

.method public coordFromCurrent(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/scalado/base/Point;->clone()Lcom/scalado/base/Point;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstCoordFromCurrent(Lcom/scalado/base/Point;)I

    move-result v0

    return-object v1
.end method

.method public coordToCurrent(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/scalado/base/Point;->clone()Lcom/scalado/base/Point;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstCoordToCurrent(Lcom/scalado/base/Point;)I

    move-result v0

    return-object v1
.end method

.method public getCanvasArea()Lcom/scalado/base/Rect;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    invoke-direct {p0, v1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstGetCanvasArea(Lcom/scalado/base/Rect;)I

    move-result v0

    return-object v1
.end method

.method public getDimensions()Lcom/scalado/base/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v1, Lcom/scalado/base/Size;

    invoke-direct {v1}, Lcom/scalado/base/Size;-><init>()V

    invoke-direct {p0, v1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstGetDimensions(Lcom/scalado/base/Size;)I

    move-result v0

    return-object v1
.end method

.method public getImage()Lcom/scalado/base/Image;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v2, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->image:Lcom/scalado/base/Image;

    invoke-virtual {v2}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v2

    sget-object v3, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x4

    :goto_0
    new-instance v0, Lcom/scalado/base/Image;

    invoke-direct {p0}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstGetImageBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->image:Lcom/scalado/base/Image;

    invoke-virtual {v3}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->image:Lcom/scalado/base/Image;

    invoke-virtual {v4}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    mul-int/2addr v4, v1

    iget-object v5, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->image:Lcom/scalado/base/Image;

    invoke-virtual {v5}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/scalado/base/Image;-><init>(Ljava/nio/ByteBuffer;Lcom/scalado/base/Size;ILcom/scalado/base/Image$Config;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->image:Lcom/scalado/base/Image;

    invoke-virtual {v2}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v2

    sget-object v3, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public getMidPoint()Lcom/scalado/base/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v1, Lcom/scalado/base/Point;

    invoke-direct {v1}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, v1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstGetZoomPoint(Lcom/scalado/base/Point;)I

    move-result v0

    return-object v1
.end method

.method public getPanX()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstGetPan()I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->panX:F

    return v1
.end method

.method public getPanY()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstGetPan()I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->panY:F

    return v1
.end method

.method public getRotation()Lcom/scalado/caps/Rotation;
    .locals 2

    invoke-direct {p0}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstGetRotation()I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->rotation:I

    invoke-static {v1}, Lcom/scalado/caps/Rotation;->getRotationFromValue(I)Lcom/scalado/caps/Rotation;

    move-result-object v1

    return-object v1
.end method

.method public getZoom()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstGetZoom()I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->zoom:F

    return v1
.end method

.method public render()V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstRender()I

    move-result v0

    return-void
.end method

.method public setBuffer(Lcom/scalado/base/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstSetBuffer(Lcom/scalado/base/Buffer;)I

    move-result v0

    return-void
.end method

.method public setPan(FF)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/high16 v3, 0x3f80

    const/high16 v2, -0x4080

    cmpg-float v1, p1, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v3

    if-gtz v1, :cond_0

    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v3

    if-lez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstSetPan(FF)I

    move-result v0

    return-void
.end method

.method public setRgbAdjust(FFF)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/high16 v3, 0x3f80

    const/high16 v2, -0x4080

    cmpg-float v1, p1, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v3

    if-gtz v1, :cond_0

    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_0

    cmpg-float v1, p3, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p3, v3

    if-lez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstSetRgbAdjust(FFF)I

    move-result v0

    return-void
.end method

.method public setRotation(Lcom/scalado/caps/Rotation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstSetRotation(I)I

    move-result v0

    return-void
.end method

.method public setSharpness(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstSetSharpness(I)I

    move-result v0

    return-void
.end method

.method public setZoom(Lcom/scalado/base/Rect;)Lcom/scalado/base/Rect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstSetZoomRect(Lcom/scalado/base/Rect;)I

    move-result v0

    return-object p1
.end method

.method public setZoom(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/high16 v1, 0x3f80

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstSetZoom(F)I

    move-result v0

    return-void
.end method

.method public setZoom(FLcom/scalado/base/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    const/high16 v1, 0x3f80

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/zoomburstviewer/ZoomBurstScreen;->nativeZoomBurstSetZoomPoint(FLcom/scalado/base/Point;)I

    move-result v0

    return-void
.end method
