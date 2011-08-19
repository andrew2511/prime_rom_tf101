.class Lcom/asus/keyboard/KeyboardService$1;
.super Lcom/asus/keyboard/IKeyboardService$Stub;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/keyboard/KeyboardService;


# direct methods
.method constructor <init>(Lcom/asus/keyboard/KeyboardService;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$1;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0}, Lcom/asus/keyboard/IKeyboardService$Stub;-><init>()V

    return-void
.end method
