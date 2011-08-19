.class public abstract Lgov/nist/javax/sip/header/SIPHeaderNamesCache;
.super Ljava/lang/Object;
.source "SIPHeaderNamesCache.java"


# static fields
.field private static final lowercaseMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 12
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    .line 15
    const-class v5, Lgov/nist/javax/sip/header/SIPHeaderNames;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 16
    .local v1, fields:[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    array-length v5, v1

    if-ge v2, v5, :cond_41

    .line 17
    aget-object v0, v1, v2

    .line 18
    .local v0, field:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 20
    const/4 v5, 0x0

    :try_start_2a
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 21
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, lowerCase:Ljava/lang/String;
    sget-object v5, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v5, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_3e} :catch_42

    .line 16
    .end local v3           #lowerCase:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 28
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_41
    return-void

    .line 24
    .restart local v0       #field:Ljava/lang/reflect/Field;
    :catch_42
    move-exception v5

    goto :goto_3e
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "headerName"

    .prologue
    .line 31
    sget-object v1, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, lowerCase:Ljava/lang/String;
    if-nez v0, :cond_f

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 36
    :goto_e
    return-object v1

    :cond_f
    move-object v1, v0

    goto :goto_e
.end method
