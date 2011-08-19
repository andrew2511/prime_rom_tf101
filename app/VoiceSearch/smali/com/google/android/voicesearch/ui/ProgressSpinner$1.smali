.class Lcom/google/android/voicesearch/ui/ProgressSpinner$1;
.super Ljava/lang/Object;
.source "ProgressSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/ui/ProgressSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/ui/ProgressSpinner;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/ui/ProgressSpinner;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner$1;->this$0:Lcom/google/android/voicesearch/ui/ProgressSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner$1;->this$0:Lcom/google/android/voicesearch/ui/ProgressSpinner;

    invoke-static {v0}, Lcom/google/android/voicesearch/ui/ProgressSpinner;->access$000(Lcom/google/android/voicesearch/ui/ProgressSpinner;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 44
    return-void
.end method
