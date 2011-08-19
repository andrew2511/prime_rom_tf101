.class public Lorg/apache/harmony/security/DefaultPolicyScanner;
.super Ljava/lang/Object;
.source "DefaultPolicyScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;,
        Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;,
        Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;,
        Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;,
        Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    return-void
.end method


# virtual methods
.method protected composeStatus(Ljava/io/StreamTokenizer;)Ljava/lang/String;
    .registers 3
    .parameter "st"

    .prologue
    .line 363
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected configure(Ljava/io/StreamTokenizer;)Ljava/io/StreamTokenizer;
    .registers 5
    .parameter "st"

    .prologue
    const/16 v2, 0x5f

    const/16 v1, 0x24

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p1, v0}, Ljava/io/StreamTokenizer;->slashSlashComments(Z)V

    .line 94
    invoke-virtual {p1, v0}, Ljava/io/StreamTokenizer;->slashStarComments(Z)V

    .line 95
    invoke-virtual {p1, v2, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 96
    invoke-virtual {p1, v1, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 97
    return-object p1
.end method

.method protected final handleUnexpectedToken(Ljava/io/StreamTokenizer;)V
    .registers 5
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->composeStatus(Ljava/io/StreamTokenizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V
    .registers 6
    .parameter "st"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->composeStatus(Ljava/io/StreamTokenizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readGrantEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;
    .registers 6
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 204
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;-><init>()V

    .line 206
    .local v0, ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;
    :goto_7
    :sswitch_7
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    sparse-switch v1, :sswitch_data_66

    .line 236
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    .line 241
    :goto_11
    return-object v0

    .line 209
    :sswitch_12
    const-string v1, "signedby"

    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 210
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_27

    .line 211
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    goto :goto_7

    .line 213
    :cond_27
    const-string v1, "Expected syntax is signedby \"name1,...,nameN\""

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_7

    .line 215
    :cond_2d
    const-string v1, "codebase"

    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 216
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_42

    .line 217
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->codebase:Ljava/lang/String;

    goto :goto_7

    .line 219
    :cond_42
    const-string v1, "Expected syntax is codebase \"url\""

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_7

    .line 221
    :cond_48
    const-string v1, "principal"

    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 222
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->readPrincipalEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->addPrincipal(Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;)V

    goto :goto_7

    .line 224
    :cond_5a
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;)V

    goto :goto_7

    .line 232
    :sswitch_5e
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->readPermissionEntries(Ljava/io/StreamTokenizer;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->permissions:Ljava/util/Collection;

    goto :goto_11

    .line 206
    nop

    :sswitch_data_66
    .sparse-switch
        -0x3 -> :sswitch_12
        0x2c -> :sswitch_7
        0x7b -> :sswitch_5e
    .end sparse-switch
.end method

.method protected readKeystoreEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    .registers 6
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 164
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;-><init>()V

    .line 165
    .local v0, ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_2c

    .line 166
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->url:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-eq v1, v3, :cond_23

    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_28

    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_28

    .line 169
    :cond_23
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    .line 176
    :goto_27
    return-object v0

    .line 171
    :cond_28
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    goto :goto_27

    .line 174
    :cond_2c
    const-string v1, "Expected syntax is : keystore \"url\"[, \"type\"]"

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_27
.end method

.method protected readPermissionEntries(Ljava/io/StreamTokenizer;)Ljava/util/Collection;
    .registers 9
    .parameter "st"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/StreamTokenizer;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2c

    const/4 v5, -0x3

    const/16 v4, 0x22

    .line 304
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 306
    .local v1, permissions:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;>;"
    :goto_a
    :sswitch_a
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    sparse-switch v2, :sswitch_data_7e

    .line 350
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;)V

    goto :goto_a

    .line 309
    :sswitch_15
    const-string v2, "permission"

    iget-object v3, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 310
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;-><init>()V

    .line 311
    .local v0, pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    if-ne v2, v5, :cond_77

    .line 312
    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v2, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->klass:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    if-ne v2, v4, :cond_3b

    .line 314
    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v2, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 317
    :cond_3b
    iget v2, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v2, v6, :cond_42

    .line 318
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 320
    :cond_42
    iget v2, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v2, v4, :cond_53

    .line 321
    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v2, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    if-ne v2, v6, :cond_53

    .line 323
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 326
    :cond_53
    iget v2, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v2, v5, :cond_73

    const-string v2, "signedby"

    iget-object v3, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 328
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    if-ne v2, v4, :cond_6f

    .line 329
    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v2, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    .line 336
    :goto_6b
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 331
    :cond_6f
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;)V

    goto :goto_6b

    .line 334
    :cond_73
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    goto :goto_6b

    .line 340
    .end local v0           #pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;
    :cond_77
    const-string v2, "Expected syntax is permission permission_class_name [\"target_name\"] [, \"action_list\"] [, signedby \"name1,...,nameN\"]"

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_a

    .line 355
    :sswitch_7d
    return-object v1

    .line 306
    :sswitch_data_7e
    .sparse-switch
        -0x3 -> :sswitch_15
        0x3b -> :sswitch_a
        0x7d -> :sswitch_7d
    .end sparse-switch
.end method

.method protected readPrincipalEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    .registers 6
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2a

    .line 264
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;-><init>()V

    .line 265
    .local v0, pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_20

    .line 266
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 272
    :cond_15
    :goto_15
    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v2, 0x22

    if-ne v1, v2, :cond_2c

    .line 273
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    .line 279
    :goto_1f
    return-object v0

    .line 268
    :cond_20
    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v1, v3, :cond_15

    .line 269
    const-string v1, "*"

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_15

    .line 274
    :cond_2c
    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v1, v3, :cond_35

    .line 275
    const-string v1, "*"

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    goto :goto_1f

    .line 277
    :cond_35
    const-string v1, "Expected syntax is principal [class_name] \"principal_name\""

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public scanStream(Ljava/io/Reader;Ljava/util/Collection;Ljava/util/List;)V
    .registers 7
    .parameter "r"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 120
    .local p2, grantEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;>;"
    .local p3, keystoreEntries:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;>;"
    new-instance v1, Ljava/io/StreamTokenizer;

    invoke-direct {v1, p1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->configure(Ljava/io/StreamTokenizer;)Ljava/io/StreamTokenizer;

    move-result-object v0

    .line 123
    .local v0, st:Ljava/io/StreamTokenizer;
    :goto_9
    :sswitch_9
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    sparse-switch v1, :sswitch_data_40

    .line 141
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;)V

    goto :goto_9

    .line 128
    :sswitch_14
    const-string v1, "keystore"

    iget-object v2, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 129
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/DefaultPolicyScanner;->readKeystoreEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 130
    :cond_26
    const-string v1, "grant"

    iget-object v2, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 131
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/DefaultPolicyScanner;->readGrantEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 133
    :cond_38
    const-string v1, "Expected entries are \"grant\" or \"keystore\""

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_9

    .line 145
    :sswitch_3e
    return-void

    .line 123
    nop

    :sswitch_data_40
    .sparse-switch
        -0x3 -> :sswitch_14
        -0x1 -> :sswitch_3e
        0x3b -> :sswitch_9
    .end sparse-switch
.end method
