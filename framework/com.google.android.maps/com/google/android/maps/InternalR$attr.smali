.class final Lcom/google/android/maps/InternalR$attr;
.super Ljava/lang/Object;
.source "InternalR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/InternalR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "attr"
.end annotation


# static fields
.field public static final mapViewStyle:I

.field public static final state_focused:I

.field public static final state_pressed:I

.field public static final state_selected:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    const-string v0, "mapViewStyle"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$attr;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$attr;->mapViewStyle:I

    .line 102
    const-string v0, "state_focused"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$attr;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    .line 103
    const-string v0, "state_selected"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$attr;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    .line 104
    const-string v0, "state_pressed"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$attr;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get(Ljava/lang/String;)I
    .registers 2
    .parameter "fieldName"

    .prologue
    .line 98
    const-class v0, Lcom/android/internal/R$attr;

    #calls: Lcom/google/android/maps/InternalR;->get(Ljava/lang/Class;Ljava/lang/String;)I
    invoke-static {v0, p0}, Lcom/google/android/maps/InternalR;->access$000(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
