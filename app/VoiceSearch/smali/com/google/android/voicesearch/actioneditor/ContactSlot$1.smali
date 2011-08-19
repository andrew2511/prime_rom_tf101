.class Lcom/google/android/voicesearch/actioneditor/ContactSlot$1;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "ContactSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/ContactSlot;->init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOriginal()[C
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 116
    return-object v0

    .line 115
    nop

    :array_0
    .array-data 0x2
        0x3ct 0x0t
        0x3et 0x0t
    .end array-data
.end method

.method protected getReplacement()[C
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 110
    return-object v0

    .line 109
    nop

    :array_0
    .array-data 0x2
        0xfft 0xfet
        0xfft 0xfet
    .end array-data
.end method
