.class Lnet/yostore/aws/view/capture/FolderActivity$DirAlphaComparator;
.super Ljava/lang/Object;
.source "FolderActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/FolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirAlphaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/capture/FolderActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/capture/FolderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FolderActivity$DirAlphaComparator;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .parameter "filea"
    .parameter "fileb"

    .prologue
    .line 299
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const/4 v0, -0x1

    .line 306
    :goto_0
    return v0

    .line 302
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const/4 v0, 0x1

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lnet/yostore/aws/view/capture/FolderActivity$DirAlphaComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
