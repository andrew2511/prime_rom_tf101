.class public Lcom/google/android/youtube/app/ui/ToolbarHelper;
.super Ljava/lang/Object;
.source "ToolbarHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final onToolbarClickListener:Landroid/view/View$OnClickListener;


# virtual methods
.method public attachToView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, this:Lcom/google/android/youtube/app/ui/ToolbarHelper;,"Lcom/google/android/youtube/app/ui/ToolbarHelper<TT;>;"
    .local p2, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ToolbarHelper;->onToolbarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    return-void
.end method
