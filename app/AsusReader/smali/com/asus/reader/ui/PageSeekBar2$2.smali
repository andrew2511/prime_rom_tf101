.class Lcom/asus/reader/ui/PageSeekBar2$2;
.super Ljava/lang/Object;
.source "PageSeekBar2.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/ui/PageSeekBar2;->unregisterOnSeekBarChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ui/PageSeekBar2;


# direct methods
.method constructor <init>(Lcom/asus/reader/ui/PageSeekBar2;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/asus/reader/ui/PageSeekBar2$2;->this$0:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method
