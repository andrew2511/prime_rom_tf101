.class Lnet/yostore/aws/view/capture/FolderActivity$1;
.super Ljava/lang/Object;
.source "FolderActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/FolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/capture/FolderActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/capture/FolderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FolderActivity$1;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method
