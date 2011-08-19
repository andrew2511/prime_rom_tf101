.class final Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;
.super Ljava/lang/Object;
.source "EditorAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/edit/EditorAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerArgs"
.end annotation


# instance fields
.field files:[Ljava/io/File;

.field handler:Landroid/os/Handler;

.field path:Ljava/lang/String;

.field showsuccess:Z

.field srcDelete:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/edit/EditorAsyncHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/asus/filemanager/edit/EditorAsyncHelper$WorkerArgs;-><init>()V

    return-void
.end method
