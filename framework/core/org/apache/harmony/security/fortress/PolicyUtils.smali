.class public Lorg/apache/harmony/security/fortress/PolicyUtils;
.super Ljava/lang/Object;
.source "PolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$SystemPropertyAccessor;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$SystemKit;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/String; = "false"

.field private static final NO_ARGS:[Ljava/lang/Class; = null

.field private static final ONE_ARGS:[Ljava/lang/Class; = null

.field public static final POLICY_ALLOW_DYNAMIC:Ljava/lang/String; = "policy.allowSystemProperty"

.field public static final POLICY_EXPAND:Ljava/lang/String; = "policy.expandProperties"

.field public static final TRUE:Ljava/lang/String; = "true"

.field private static final TWO_ARGS:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 553
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/harmony/security/fortress/PolicyUtils;->NO_ARGS:[Ljava/lang/Class;

    .line 556
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/harmony/security/fortress/PolicyUtils;->ONE_ARGS:[Ljava/lang/Class;

    .line 559
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/harmony/security/fortress/PolicyUtils;->TWO_ARGS:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canExpandProperties()Z
    .registers 3

    .prologue
    .line 424
    const-string v1, "false"

    new-instance v0, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;

    const-string v2, "policy.expandProperties"

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .registers 14
    .parameter "str"
    .parameter "properties"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;
        }
    .end annotation

    .prologue
    .line 252
    const-string v2, "${"

    .line 253
    .local v2, START_MARK:Ljava/lang/String;
    const-string v0, "}"

    .line 254
    .local v0, END_MARK:Ljava/lang/String;
    const-string v9, "${"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    .line 255
    .local v3, START_OFFSET:I
    const-string v9, "}"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    .line 257
    .local v1, END_OFFSET:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .local v6, result:Ljava/lang/StringBuilder;
    const-string v9, "${"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 259
    .local v7, start:I
    :goto_1b
    if-ltz v7, :cond_5b

    .line 260
    const-string v9, "}"

    invoke-virtual {v6, v9, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 261
    .local v4, end:I
    if-ltz v4, :cond_3b

    .line 262
    add-int v9, v7, v3

    invoke-virtual {v6, v9, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, key:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_42

    .line 265
    add-int v9, v4, v1

    invoke-virtual {v6, v7, v9, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v7, v9

    .line 271
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_3b
    const-string v9, "${"

    invoke-virtual {v6, v9, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 272
    goto :goto_1b

    .line 268
    .restart local v5       #key:Ljava/lang/String;
    .restart local v8       #value:Ljava/lang/String;
    :cond_42
    new-instance v9, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 273
    .end local v4           #end:I
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_5b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static expandGeneral(Ljava/lang/String;Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;)Ljava/lang/String;
    .registers 15
    .parameter "str"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;
        }
    .end annotation

    .prologue
    .line 368
    const-string v2, "${{"

    .line 369
    .local v2, START_MARK:Ljava/lang/String;
    const-string v0, "}}"

    .line 370
    .local v0, END_MARK:Ljava/lang/String;
    const-string v12, "${{"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    .line 371
    .local v3, START_OFFSET:I
    const-string v12, "}}"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 373
    .local v1, END_OFFSET:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .local v8, result:Ljava/lang/StringBuilder;
    const-string v12, "${{"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 375
    .local v10, start:I
    :goto_1b
    if-ltz v10, :cond_5c

    .line 376
    const-string v12, "}}"

    invoke-virtual {v8, v12, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 377
    .local v5, end:I
    if-ltz v5, :cond_50

    .line 378
    add-int v12, v10, v3

    invoke-virtual {v8, v12, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 379
    .local v6, key:Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 380
    .local v9, separator:I
    if-ltz v9, :cond_57

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 382
    .local v7, protocol:Ljava/lang/String;
    :goto_39
    if-ltz v9, :cond_59

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 384
    .local v4, data:Ljava/lang/String;
    :goto_42
    invoke-interface {p1, v7, v4}, Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 385
    .local v11, value:Ljava/lang/String;
    add-int v12, v5, v1

    invoke-virtual {v8, v10, v12, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v10, v12

    .line 388
    .end local v4           #data:Ljava/lang/String;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #protocol:Ljava/lang/String;
    .end local v9           #separator:I
    .end local v11           #value:Ljava/lang/String;
    :cond_50
    const-string v12, "${{"

    invoke-virtual {v8, v12, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 389
    goto :goto_1b

    .restart local v6       #key:Ljava/lang/String;
    .restart local v9       #separator:I
    :cond_57
    move-object v7, v6

    .line 380
    goto :goto_39

    .line 382
    .restart local v7       #protocol:Ljava/lang/String;
    :cond_59
    const/4 v12, 0x0

    move-object v4, v12

    goto :goto_42

    .line 390
    .end local v5           #end:I
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #protocol:Ljava/lang/String;
    .end local v9           #separator:I
    :cond_5c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public static expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .registers 5
    .parameter "str"
    .parameter "properties"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p0, p1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static filePathToURI(Ljava/lang/String;)Ljava/net/URI;
    .registers 7
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2f

    const/4 v2, 0x0

    .line 326
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 328
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 329
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_31
    return-object v0

    :cond_32
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    move-object v3, p0

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

.method public static getPolicyURLs(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)[Ljava/net/URL;
    .registers 16
    .parameter "system"
    .parameter "systemUrlKey"
    .parameter "securityUrlPrefix"

    .prologue
    .line 463
    new-instance v9, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;

    const/4 v11, 0x0

    invoke-direct {v9, v11}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;-><init>(Ljava/lang/String;)V

    .line 465
    .local v9, security:Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v10, urls:Ljava/util/List;,"Ljava/util/List<Ljava/net/URL;>;"
    const/4 v2, 0x0

    .line 467
    .local v2, dynamicOnly:Z
    const/4 v3, 0x0

    .line 470
    .local v3, dynamicURL:Ljava/net/URL;
    const-string v12, "false"

    const-string v11, "policy.allowSystemProperty"

    invoke-virtual {v9, v11}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;->key(Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v11

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v12, v11}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_53

    .line 472
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 473
    .local v8, location:Ljava/lang/String;
    if-eqz v8, :cond_53

    .line 474
    const-string v11, "="

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 476
    const/4 v2, 0x1

    .line 477
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 480
    :cond_35
    :try_start_35
    invoke-static {v8, p0}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v8

    .line 482
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v5, f:Ljava/io/File;
    new-instance v11, Lorg/apache/harmony/security/fortress/PolicyUtils$1;

    invoke-direct {v11, v5}, Lorg/apache/harmony/security/fortress/PolicyUtils$1;-><init>(Ljava/io/File;)V

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/URL;

    move-object v3, v0

    .line 494
    if-nez v3, :cond_53

    .line 495
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_52} :catch_95

    .end local v3           #dynamicURL:Ljava/net/URL;
    .local v4, dynamicURL:Ljava/net/URL;
    move-object v3, v4

    .line 505
    .end local v4           #dynamicURL:Ljava/net/URL;
    .end local v5           #f:Ljava/io/File;
    .end local v8           #location:Ljava/lang/String;
    .restart local v3       #dynamicURL:Ljava/net/URL;
    :cond_53
    :goto_53
    if-nez v2, :cond_71

    .line 506
    const/4 v6, 0x1

    .line 508
    .local v6, i:I
    :goto_56
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .local v7, i:I
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;->key(Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v11

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 511
    .restart local v8       #location:Ljava/lang/String;
    if-nez v8, :cond_83

    .line 527
    .end local v7           #i:I
    .end local v8           #location:Ljava/lang/String;
    :cond_71
    if-eqz v3, :cond_76

    .line 528
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_76
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/net/URL;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/net/URL;

    return-object p0

    .line 515
    .restart local v7       #i:I
    .restart local v8       #location:Ljava/lang/String;
    .restart local p0
    :cond_83
    :try_start_83
    invoke-static {v8, p0}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v8

    .line 516
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 517
    .local v1, anURL:Ljava/net/URL;
    if-eqz v1, :cond_91

    .line 518
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_91} :catch_93

    .end local v1           #anURL:Ljava/net/URL;
    :cond_91
    :goto_91
    move v6, v7

    .line 525
    .end local v7           #i:I
    .restart local v6       #i:I
    goto :goto_56

    .line 521
    .end local v6           #i:I
    .restart local v7       #i:I
    :catch_93
    move-exception v11

    goto :goto_91

    .line 498
    .end local v7           #i:I
    :catch_95
    move-exception v11

    goto :goto_53
.end method

.method public static instantiatePermission(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;
    .registers 13
    .parameter
    .parameter "targetName"
    .parameter "targetActions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/security/Permission;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, targetType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 576
    move-object v0, v5

    check-cast v0, [[Ljava/lang/Class;

    move-object v1, v0

    .line 577
    .local v1, argTypes:[[Ljava/lang/Class;
    move-object v0, v5

    check-cast v0, [[Ljava/lang/Object;

    move-object v2, v0

    .line 578
    .local v2, args:[[Ljava/lang/Object;
    if-eqz p2, :cond_46

    .line 579
    new-array v1, v9, [[Ljava/lang/Class;

    .end local v1           #argTypes:[[Ljava/lang/Class;
    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->TWO_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v6

    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->ONE_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v7

    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->NO_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v8

    .line 580
    .restart local v1       #argTypes:[[Ljava/lang/Class;
    new-array v2, v9, [[Ljava/lang/Object;

    .end local v2           #args:[[Ljava/lang/Object;
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    aput-object v5, v2, v6

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object v5, v2, v7

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v5, v2, v8

    .line 593
    .restart local v2       #args:[[Ljava/lang/Object;
    :goto_31
    const/4 v4, 0x0

    .local v4, i:I
    :goto_32
    array-length v5, v1

    if-ge v4, v5, :cond_92

    .line 595
    :try_start_35
    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 596
    .local v3, ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/security/Permission;

    move-object p0, v0
    :try_end_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_35 .. :try_end_45} :catch_8e

    .end local p0           #targetType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-object p0

    .line 582
    .end local v3           #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v4           #i:I
    .restart local p0       #targetType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_46
    if-eqz p1, :cond_6b

    .line 583
    new-array v1, v9, [[Ljava/lang/Class;

    .end local v1           #argTypes:[[Ljava/lang/Class;
    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->ONE_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v6

    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->TWO_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v7

    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->NO_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v8

    .line 584
    .restart local v1       #argTypes:[[Ljava/lang/Class;
    new-array v2, v9, [[Ljava/lang/Object;

    .end local v2           #args:[[Ljava/lang/Object;
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object v5, v2, v6

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    aput-object v5, v2, v7

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v5, v2, v8

    .restart local v2       #args:[[Ljava/lang/Object;
    goto :goto_31

    .line 587
    :cond_6b
    new-array v1, v9, [[Ljava/lang/Class;

    .end local v1           #argTypes:[[Ljava/lang/Class;
    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->NO_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v6

    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->ONE_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v7

    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->TWO_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v8

    .line 588
    .restart local v1       #argTypes:[[Ljava/lang/Class;
    new-array v2, v9, [[Ljava/lang/Object;

    .end local v2           #args:[[Ljava/lang/Object;
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v5, v2, v6

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object v5, v2, v7

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    aput-object v5, v2, v8

    .restart local v2       #args:[[Ljava/lang/Object;
    goto :goto_31

    .line 598
    .restart local v4       #i:I
    :catch_8e
    move-exception v5

    .line 593
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 600
    :cond_92
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No suitable constructors found in permission class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Zero, one or two-argument constructor is expected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .parameter "what"
    .parameter "where"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 615
    if-nez p0, :cond_6

    move v3, v6

    .line 636
    :goto_5
    return v3

    .line 619
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_2c

    .line 620
    aget-object v3, p0, v1

    if-eqz v3, :cond_29

    .line 621
    if-nez p1, :cond_12

    move v3, v5

    .line 622
    goto :goto_5

    .line 624
    :cond_12
    const/4 v0, 0x0

    .line 625
    .local v0, found:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_14
    array-length v3, p1

    if-ge v2, v3, :cond_22

    .line 626
    aget-object v3, p0, v1

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 627
    const/4 v0, 0x1

    .line 631
    :cond_22
    if-nez v0, :cond_29

    move v3, v5

    .line 632
    goto :goto_5

    .line 625
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 619
    .end local v0           #found:Z
    .end local v2           #j:I
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2c
    move v3, v6

    .line 636
    goto :goto_5
.end method

.method public static normalizeURL(Ljava/net/URL;)Ljava/net/URL;
    .registers 4
    .parameter "codebase"

    .prologue
    .line 294
    if-eqz p0, :cond_48

    const-string v1, "file"

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 296
    :try_start_e
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3a

    .line 297
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, path:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_24

    .line 301
    const-string v0, "*"

    .line 303
    :cond_24
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->filePathToURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 313
    .end local v0           #path:Ljava/lang/String;
    :goto_39
    return-object v1

    .line 307
    :cond_3a
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_45} :catch_47

    move-result-object v1

    goto :goto_39

    .line 309
    :catch_47
    move-exception v1

    :cond_48
    move-object v1, p0

    .line 313
    goto :goto_39
.end method

.method public static toPermissionCollection(Ljava/util/Collection;)Ljava/security/PermissionCollection;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/Permission;",
            ">;)",
            "Ljava/security/PermissionCollection;"
        }
    .end annotation

    .prologue
    .line 542
    .local p0, perms:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    new-instance v2, Ljava/security/Permissions;

    invoke-direct {v2}, Ljava/security/Permissions;-><init>()V

    .line 543
    .local v2, pc:Ljava/security/Permissions;
    if-eqz p0, :cond_1b

    .line 544
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Permission;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 545
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Permission;

    .line 546
    .local v0, element:Ljava/security/Permission;
    invoke-virtual {v2, v0}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    goto :goto_b

    .line 549
    .end local v0           #element:Ljava/security/Permission;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Permission;>;"
    :cond_1b
    return-object v2
.end method
