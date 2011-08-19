.class Lcom/google/android/gm/TwoPaneActionBar$3;
.super Ljava/lang/Object;
.source "TwoPaneActionBar.java"

# interfaces
.implements Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/TwoPaneActionBar;->setActionBarIconBack()V
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
    .line 313
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActionBar$3;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLabelResult(Lcom/google/android/gm/provider/Label;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar$3;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-static {v0, p1}, Lcom/google/android/gm/TwoPaneActionBar;->access$200(Lcom/google/android/gm/TwoPaneActionBar;Lcom/google/android/gm/provider/Label;)V

    .line 317
    return-void
.end method
