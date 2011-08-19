.class Lcom/newspaperdirect/pressreader/android/LocalStore$14;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->initToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$14;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$14;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->onSearchRequested()Z

    .line 661
    return-void
.end method
