.class public abstract Lcom/asus/keyboard/KeyboardService$FKeyController;
.super Ljava/lang/Object;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "FKeyController"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/asus/keyboard/KeyboardService;


# direct methods
.method public constructor <init>(Lcom/asus/keyboard/KeyboardService;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$FKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract process(I)V
.end method
