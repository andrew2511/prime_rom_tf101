.class public final enum Lcom/google/android/gm/template/Comparison$Type;
.super Ljava/lang/Enum;
.source "Comparison.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/template/Comparison;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/template/Comparison$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gm/template/Comparison$Type;

.field public static final enum EQUALS:Lcom/google/android/gm/template/Comparison$Type;

.field public static final enum NOT_EQUALS:Lcom/google/android/gm/template/Comparison$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/google/android/gm/template/Comparison$Type;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/template/Comparison$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/template/Comparison$Type;->EQUALS:Lcom/google/android/gm/template/Comparison$Type;

    new-instance v0, Lcom/google/android/gm/template/Comparison$Type;

    const-string v1, "NOT_EQUALS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/template/Comparison$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/template/Comparison$Type;->NOT_EQUALS:Lcom/google/android/gm/template/Comparison$Type;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gm/template/Comparison$Type;

    sget-object v1, Lcom/google/android/gm/template/Comparison$Type;->EQUALS:Lcom/google/android/gm/template/Comparison$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/template/Comparison$Type;->NOT_EQUALS:Lcom/google/android/gm/template/Comparison$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gm/template/Comparison$Type;->$VALUES:[Lcom/google/android/gm/template/Comparison$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/template/Comparison$Type;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/google/android/gm/template/Comparison$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gm/template/Comparison$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gm/template/Comparison$Type;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/gm/template/Comparison$Type;->$VALUES:[Lcom/google/android/gm/template/Comparison$Type;

    invoke-virtual {v0}, [Lcom/google/android/gm/template/Comparison$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/template/Comparison$Type;

    return-object v0
.end method
