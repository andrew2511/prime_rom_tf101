.class Lcom/google/android/youtube/app/tablet/ResultsController$1;
.super Ljava/lang/Object;
.source "ResultsController.java"

# interfaces
.implements Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/tablet/ResultsController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/ResultsController;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/tablet/ResultsController;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/ResultsController$1;->this$0:Lcom/google/android/youtube/app/tablet/ResultsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterChanged(Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)V
    .locals 1
    .parameter "timeFilter"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ResultsController$1;->this$0:Lcom/google/android/youtube/app/tablet/ResultsController;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/tablet/ResultsController;->access$000(Lcom/google/android/youtube/app/tablet/ResultsController;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)V

    .line 106
    return-void
.end method

.method public bridge synthetic onFilterChanged(Ljava/lang/Enum;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/tablet/ResultsController$1;->onFilterChanged(Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)V

    return-void
.end method
