.class final enum Lorg/apache/http/impl/auth/NTLMScheme$State;
.super Ljava/lang/Enum;
.source "NTLMScheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/auth/NTLMScheme$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/auth/NTLMScheme$State;

.field public static final enum CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMScheme$State;

.field public static final enum FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

.field public static final enum MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

.field public static final enum MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMScheme$State;

.field public static final enum MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

.field public static final enum UNINITIATED:Lorg/apache/http/impl/auth/NTLMScheme$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lorg/apache/http/impl/auth/NTLMScheme$State;

    const-string v1, "UNINITIATED"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    .line 60
    new-instance v0, Lorg/apache/http/impl/auth/NTLMScheme$State;

    const-string v1, "CHALLENGE_RECEIVED"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    .line 61
    new-instance v0, Lorg/apache/http/impl/auth/NTLMScheme$State;

    const-string v1, "MSG_TYPE1_GENERATED"

    invoke-direct {v0, v1, v5}, Lorg/apache/http/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    .line 62
    new-instance v0, Lorg/apache/http/impl/auth/NTLMScheme$State;

    const-string v1, "MSG_TYPE2_RECEVIED"

    invoke-direct {v0, v1, v6}, Lorg/apache/http/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    .line 63
    new-instance v0, Lorg/apache/http/impl/auth/NTLMScheme$State;

    const-string v1, "MSG_TYPE3_GENERATED"

    invoke-direct {v0, v1, v7}, Lorg/apache/http/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    .line 64
    new-instance v0, Lorg/apache/http/impl/auth/NTLMScheme$State;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->$VALUES:[Lorg/apache/http/impl/auth/NTLMScheme$State;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/auth/NTLMScheme$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lorg/apache/http/impl/auth/NTLMScheme$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/http/impl/auth/NTLMScheme$State;

    return-object p0
.end method

.method public static values()[Lorg/apache/http/impl/auth/NTLMScheme$State;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->$VALUES:[Lorg/apache/http/impl/auth/NTLMScheme$State;

    invoke-virtual {v0}, [Lorg/apache/http/impl/auth/NTLMScheme$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/auth/NTLMScheme$State;

    return-object v0
.end method
