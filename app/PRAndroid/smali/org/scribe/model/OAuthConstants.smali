.class public Lorg/scribe/model/OAuthConstants;
.super Ljava/lang/Object;
.source "OAuthConstants.java"


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final CALLBACK:Ljava/lang/String; = "oauth_callback"

.field public static final CONSUMER_KEY:Ljava/lang/String; = "oauth_consumer_key"

.field public static final CONSUMER_SECRET:Ljava/lang/String; = "oauth_consumer_secret"

.field public static final EMPTY_TOKEN:Lorg/scribe/model/Token; = null

.field public static final HEADER:Ljava/lang/String; = "Authorization"

.field public static final NONCE:Ljava/lang/String; = "oauth_nonce"

.field public static final OUT_OF_BAND:Ljava/lang/String; = "oob"

.field public static final PARAM_PREFIX:Ljava/lang/String; = "oauth_"

.field public static final SCOPE:Ljava/lang/String; = "scope"

.field public static final SIGNATURE:Ljava/lang/String; = "oauth_signature"

.field public static final SIGN_METHOD:Ljava/lang/String; = "oauth_signature_method"

.field public static final TIMESTAMP:Ljava/lang/String; = "oauth_timestamp"

.field public static final TOKEN:Ljava/lang/String; = "oauth_token"

.field public static final TOKEN_SECRET:Ljava/lang/String; = "oauth_token_secret"

.field public static final VERIFIER:Ljava/lang/String; = "oauth_verifier"

.field public static final VERSION:Ljava/lang/String; = "oauth_version"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lorg/scribe/model/Token;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/scribe/model/OAuthConstants;->EMPTY_TOKEN:Lorg/scribe/model/Token;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
