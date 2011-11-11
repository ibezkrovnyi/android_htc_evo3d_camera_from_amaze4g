.class public Lcom/scalado/caps/PeerBase;
.super Ljava/lang/Object;
.source "PeerBase.java"


# static fields
.field static final NO_C_PEER:J = -0x1L

.field static logger:Lcom/scalado/caps/LogInterface;


# instance fields
.field protected mInstanceID:I

.field private mUniqueID:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v11, "WARNING: Could not load libJCAPSJAVA due to UnsatisfiedLinkError exception. "

    const-string v6, "Linux"

    const-string v6, "Loading "

    const-string v10, "JNI"

    new-instance v6, Lcom/scalado/caps/LogRelease;

    invoke-direct {v6}, Lcom/scalado/caps/LogRelease;-><init>()V

    sput-object v6, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    sget-object v6, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v7, "JNI"

    const-string v7, "Trying to load libcapsjava"

    invoke-interface {v6, v10, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "os.name"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "java.vm.name"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v7, "JNI"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Os name = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " VM name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v10, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v6, "Linux"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Dalvik"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v2, "capsjava_ar"

    sget-object v6, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v7, "JNI on Android target"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Loading "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/scalado/caps/PeerBase;->initialize()I

    move-result v4

    :goto_1
    return-void

    :cond_0
    const-string v6, "Windows XP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Windows 2003"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Linux"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/scalado/caps/PeerBase;->libPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v7, "JNI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Loading "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v5, v6

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v7, "JNI"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WARNING: Could not load libJCAPSJAVA due to UnsatisfiedLinkError exception. "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v10, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WARNING: Could not load libJCAPSJAVA due to UnsatisfiedLinkError exception. "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw v5

    :cond_2
    :try_start_1
    const-string v2, "capsjava"

    sget-object v6, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v7, "JNI on unhandled platform"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Loading "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v6

    move-object v0, v6

    sget-object v6, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v7, "JNI"

    const-string v7, "WARNING: Could not load libJCAPSJAVA due to error exception"

    invoke-interface {v6, v10, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v6

    move-object v0, v6

    sget-object v6, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v7, "JNI"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WARNING: Could not load libJCAPSJAVA"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v10, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/scalado/caps/PeerBase;->mUniqueID:J

    return-void
.end method

.method private static native initialize()I
.end method

.method private static libPath()Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Ljava/io/File;

    const-string v6, "test.cfg"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-object v4

    :cond_0
    :try_start_3
    new-instance v2, Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v6, "\\s*=\\s*"

    invoke-virtual {v2, v6}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DllPath"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private onDestroy()V
    .locals 6

    sget-object v1, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v2, "JNI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, " Destroying object instance# "

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/scalado/caps/PeerBase;->mInstanceID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, " ID# "

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/scalado/caps/PeerBase;->mUniqueID:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/scalado/caps/PeerBase;->destroy()I

    move-result v0

    return-void
.end method


# virtual methods
.method protected native destroy()I
.end method

.method protected finalize()V
    .locals 5

    sget-object v0, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v1, "JVM"

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    const-string v4, "finalize "

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/scalado/caps/PeerBase;->mUniqueID:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/scalado/caps/PeerBase;->mUniqueID:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;->onDestroy()V

    :cond_0
    return-void
.end method
