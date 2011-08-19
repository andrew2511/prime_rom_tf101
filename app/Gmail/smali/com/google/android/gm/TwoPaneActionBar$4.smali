.class Lcom/google/android/gm/TwoPaneActionBar$4;
.super Landroid/database/DataSetObserver;
.source "TwoPaneActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/TwoPaneActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TwoPaneActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TwoPaneActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActionBar$4;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar$4;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-static {v0}, Lcom/google/android/gm/TwoPaneActionBar;->access$600(Lcom/google/android/gm/TwoPaneActionBar;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/TwoPaneActionBar$4$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/TwoPaneActionBar$4$1;-><init>(Lcom/google/android/gm/TwoPaneActionBar$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method
