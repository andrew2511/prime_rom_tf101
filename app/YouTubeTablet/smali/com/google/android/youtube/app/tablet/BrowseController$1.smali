.class Lcom/google/android/youtube/app/tablet/BrowseController$1;
.super Ljava/lang/Object;
.source "BrowseController.java"

# interfaces
.implements Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/tablet/BrowseController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/BrowseController;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/tablet/BrowseController;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/BrowseController$1;->this$0:Lcom/google/android/youtube/app/tablet/BrowseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterChanged(Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)V
    .locals 1
    .parameter "timeFilter"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/BrowseController$1;->this$0:Lcom/google/android/youtube/app/tablet/BrowseController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/BrowseController;->access$000(Lcom/google/android/youtube/app/tablet/BrowseController;)V

    .line 102
    return-void
.end method

.method public bridge synthetic onFilterChanged(Ljava/lang/Enum;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/tablet/BrowseController$1;->onFilterChanged(Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)V

    return-void
.end method
