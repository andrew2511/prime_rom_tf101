.class final Lcom/android/gallery3d/util/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/util/Utils;->setSpinnerVisibility(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/gallery3d/util/Utils$2;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/android/gallery3d/util/Utils$2;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/gallery3d/util/Utils$2;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/android/gallery3d/util/Utils$2;->val$visible:Z

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 484
    return-void
.end method
