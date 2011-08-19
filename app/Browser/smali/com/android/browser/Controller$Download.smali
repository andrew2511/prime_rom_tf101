.class Lcom/android/browser/Controller$Download;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Download"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mPrivateBrowsing:Z

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "activity"
    .parameter "toDownload"
    .parameter "privateBrowsing"

    .prologue
    .line 2081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2082
    iput-object p1, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    .line 2083
    iput-object p2, p0, Lcom/android/browser/Controller$Download;->mText:Ljava/lang/String;

    .line 2084
    iput-boolean p3, p0, Lcom/android/browser/Controller$Download;->mPrivateBrowsing:Z

    .line 2085
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 2076
    iget-object v0, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/Controller$Download;->mText:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/browser/Controller$Download;->mPrivateBrowsing:Z

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2078
    const/4 v0, 0x1

    return v0
.end method
