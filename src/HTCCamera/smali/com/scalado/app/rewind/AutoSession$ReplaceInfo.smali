.class public Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;
.super Ljava/lang/Object;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReplaceInfo"
.end annotation


# instance fields
.field public faceRect:Landroid/graphics/Rect;

.field public id:I

.field public imageIndex:I

.field public originalRect:Landroid/graphics/Rect;

.field public rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/scalado/app/rewind/AutoSession;

.field public wasFound:Z


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/AutoSession;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->imageIndex:I

    iput p3, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->id:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->rect:Landroid/graphics/Rect;

    if-eqz p5, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->originalRect:Landroid/graphics/Rect;

    :goto_0
    if-eqz p6, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->faceRect:Landroid/graphics/Rect;

    :goto_1
    iput-boolean p7, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->wasFound:Z

    return-void

    :cond_0
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->originalRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;->faceRect:Landroid/graphics/Rect;

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/AutoSession;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/scalado/app/rewind/AutoSession$ReplaceInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;-><init>(Lcom/scalado/app/rewind/AutoSession;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method
