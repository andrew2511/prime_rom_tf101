.class public final enum Lcom/google/android/gm/template/Constant$Type;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/template/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/template/Constant$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gm/template/Constant$Type;

.field public static final enum BOOLEAN:Lcom/google/android/gm/template/Constant$Type;

.field public static final enum FLOAT:Lcom/google/android/gm/template/Constant$Type;

.field public static final enum INTEGER:Lcom/google/android/gm/template/Constant$Type;

.field public static final enum NULL:Lcom/google/android/gm/template/Constant$Type;

.field public static final enum STRING:Lcom/google/android/gm/template/Constant$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/google/android/gm/template/Constant$Type;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/template/Constant$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/template/Constant$Type;->BOOLEAN:Lcom/google/android/gm/template/Constant$Type;

    new-instance v0, Lcom/google/android/gm/template/Constant$Type;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/template/Constant$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/template/Constant$Type;->FLOAT:Lcom/google/android/gm/template/Constant$Type;

    new-instance v0, Lcom/google/android/gm/template/Constant$Type;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gm/template/Constant$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/template/Constant$Type;->INTEGER:Lcom/google/android/gm/template/Constant$Type;

    new-instance v0, Lcom/google/android/gm/template/Constant$Type;

    const-string v1, "NULL"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gm/template/Constant$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/template/Constant$Type;->NULL:Lcom/google/android/gm/template/Constant$Type;

    new-instance v0, Lcom/google/android/gm/template/Constant$Type;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gm/template/Constant$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/template/Constant$Type;->STRING:Lcom/google/android/gm/template/Constant$Type;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gm/template/Constant$Type;

    sget-object v1, Lcom/google/android/gm/template/Constant$Type;->BOOLEAN:Lcom/google/android/gm/template/Constant$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/template/Constant$Type;->FLOAT:Lcom/google/android/gm/template/Constant$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gm/template/Constant$Type;->INTEGER:Lcom/google/android/gm/template/Constant$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gm/template/Constant$Type;->NULL:Lcom/google/android/gm/template/Constant$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gm/template/Constant$Type;->STRING:Lcom/google/android/gm/template/Constant$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/template/Constant$Type;->$VALUES:[Lcom/google/android/gm/template/Constant$Type;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/template/Constant$Type;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/google/android/gm/template/Constant$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gm/template/Constant$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gm/template/Constant$Type;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/gm/template/Constant$Type;->$VALUES:[Lcom/google/android/gm/template/Constant$Type;

    invoke-virtual {v0}, [Lcom/google/android/gm/template/Constant$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/template/Constant$Type;

    return-object v0
.end method
