.class Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;
.super Ljava/lang/Object;
.source "Autorama.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    return-void
.end method


# virtual methods
.method public onImage(Lcom/scalado/base/Image;Lcom/scalado/camera/Camera;)V
    .locals 11

    const/16 v10, 0x64

    const/high16 v9, 0x42c8

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4, p1}, Lcom/scalado/camera/autorama/Autorama;->access$16(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;)V

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$17(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v7, v7, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v7

    sub-int v7, v10, v7

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x64

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v8, v8, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    invoke-static {v8}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v8

    sub-int v8, v10, v8

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x64

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4, v5}, Lcom/scalado/camera/autorama/Autorama;->access$3(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)V

    :cond_0
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$19(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    new-instance v5, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    invoke-static {v4, v5}, Lcom/scalado/camera/autorama/Autorama;->access$20(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/ViewfinderTracker;)V

    :cond_1
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$19(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/scalado/camera/autorama/Autorama;->access$21(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Transform;)V

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Vector;->getX()I

    move-result v2

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Vector;->getY()I

    move-result v3

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    int-to-float v5, v2

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$17(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v4, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    int-to-float v5, v3

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$17(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v4, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v5, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    invoke-interface {v4, v5, v6, p1}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onTracking(FFLcom/scalado/base/Image;)V

    :cond_2
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v4, v4, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$1(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$5(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$State;

    move-result-object v4

    sget-object v5, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v5, v5, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$2(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/scalado/caps/autorama/Transform;->getDirection(I)Lcom/scalado/caps/autorama/Direction;

    move-result-object v1

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    if-eq v1, v4, :cond_3

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4, v1}, Lcom/scalado/camera/autorama/Autorama;->access$1(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Direction;)V

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onDirectionChanged(Lcom/scalado/caps/autorama/Direction;)V

    :cond_3
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, v6, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/scalado/caps/autorama/Transform;->isTimeToCapture(Lcom/scalado/caps/autorama/Direction;I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v4, v5, :cond_6

    :cond_4
    int-to-float v4, v3

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v9

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v5, v5, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_7

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$10(Lcom/scalado/camera/autorama/Autorama;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    int-to-float v4, v2

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    goto :goto_0

    :cond_7
    const-string v4, "ScaladoCameraFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Capture refused due to deviation: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-float v6, v0, v9

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, v6, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
