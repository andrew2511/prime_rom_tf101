.class Lcom/android/contacts/quickcontact/QuickContactWindow$1;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactWindow;-><init>(Landroid/content/Context;)V
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
    .line 267
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$000(Lcom/android/contacts/quickcontact/QuickContactWindow;)V

    .line 271
    return-void
.end method
