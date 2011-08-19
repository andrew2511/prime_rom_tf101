.class Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 4

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$500(Lcom/android/gallery3d/app/PhotoDataAdapter;IJ)V

    .line 624
    return-void
.end method
