.class Lcom/android/contacts/quickcontact/QuickContactWindow$2;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactWindow;->clearDefaults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 854
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$100(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 855
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$100(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 856
    .local v0, button:Lcom/android/contacts/quickcontact/CheckableImageView;
    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/CheckableImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/quickcontact/ClearDefaultsAction;

    if-eqz v2, :cond_1

    .line 857
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v2, v0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$200(Lcom/android/contacts/quickcontact/QuickContactWindow;Lcom/android/contacts/quickcontact/CheckableImageView;)V

    .line 858
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$100(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 862
    .end local v0           #button:Lcom/android/contacts/quickcontact/CheckableImageView;
    :cond_0
    return-void

    .line 854
    .restart local v0       #button:Lcom/android/contacts/quickcontact/CheckableImageView;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
