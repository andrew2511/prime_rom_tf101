.class public Lgov/nist/core/NameValue;
.super Lgov/nist/core/GenericObject;
.source "NameValue.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/core/GenericObject;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x19c7fab1bcbf73beL


# instance fields
.field protected final isFlagParameter:Z

.field protected isQuotedString:Z

.field private name:Ljava/lang/String;

.field private quotes:Ljava/lang/String;

.field private separator:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 66
    const-string v0, "="

    iput-object v0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "n"
    .parameter "v"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5
    .parameter "n"
    .parameter "v"
    .parameter "isFlag"

    .prologue
    .line 78
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 82
    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 84
    const-string v0, "="

    iput-object v0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 86
    iput-boolean p3, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    .line 87
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 213
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    .line 214
    .local v0, retval:Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_12

    .line 215
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-static {v1}, Lgov/nist/core/NameValue;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 216
    :cond_12
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 6
    .parameter "buffer"

    .prologue
    .line 163
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v2, :cond_b0

    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v2, :cond_b0

    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-nez v2, :cond_b0

    .line 164
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 165
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObject;

    .line 166
    .local v0, gv:Lgov/nist/core/GenericObject;
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 168
    iget-object v2, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    .end local v0           #gv:Lgov/nist/core/GenericObject;
    :cond_35
    :goto_35
    return-object p1

    .line 170
    :cond_36
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 171
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v1, Lgov/nist/core/GenericObjectList;

    .line 172
    .local v1, gvlist:Lgov/nist/core/GenericObjectList;
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_35

    .line 174
    .end local v1           #gvlist:Lgov/nist/core/GenericObjectList;
    :cond_5a
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8e

    .line 180
    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    if-eqz v2, :cond_82

    .line 181
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_35

    .line 184
    :cond_82
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_35

    .line 188
    :cond_8e
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_35

    .line 191
    :cond_b0
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v2, :cond_fd

    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v2, :cond_fd

    .line 192
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 193
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObject;

    .line 194
    .restart local v0       #gv:Lgov/nist/core/GenericObject;
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto/16 :goto_35

    .line 196
    .end local v0           #gv:Lgov/nist/core/GenericObject;
    :cond_cd
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 197
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v1, Lgov/nist/core/GenericObjectList;

    .line 198
    .restart local v1       #gvlist:Lgov/nist/core/GenericObjectList;
    invoke-virtual {v1}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_35

    .line 201
    .end local v1           #gvlist:Lgov/nist/core/GenericObjectList;
    :cond_e6
    iget-object v2, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_35

    .line 204
    :cond_fd
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v2, :cond_109

    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-eqz v2, :cond_35

    .line 205
    :cond_109
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_35
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "other"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 223
    if-nez p1, :cond_6

    move v4, v6

    .line 248
    :goto_5
    return v4

    .line 224
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    move v4, v6

    .line 225
    goto :goto_5

    .line 226
    :cond_16
    move-object v0, p1

    check-cast v0, Lgov/nist/core/NameValue;

    move-object v1, v0

    .line 227
    .local v1, that:Lgov/nist/core/NameValue;
    if-ne p0, v1, :cond_1e

    move v4, v7

    .line 228
    goto :goto_5

    .line 229
    :cond_1e
    iget-object v4, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v4, :cond_26

    iget-object v4, v1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v4, :cond_2e

    :cond_26
    iget-object v4, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v4, :cond_30

    iget-object v4, v1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v4, :cond_30

    :cond_2e
    move v4, v6

    .line 231
    goto :goto_5

    .line 232
    :cond_30
    iget-object v4, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v4, :cond_44

    iget-object v4, v1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v4, :cond_44

    iget-object v4, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    iget-object v5, v1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_44

    move v4, v6

    .line 234
    goto :goto_5

    .line 235
    :cond_44
    iget-object v4, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v4, :cond_4c

    iget-object v4, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v4, :cond_54

    :cond_4c
    iget-object v4, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v4, :cond_56

    iget-object v4, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v4, :cond_56

    :cond_54
    move v4, v6

    .line 237
    goto :goto_5

    .line 238
    :cond_56
    iget-object v4, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v5, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-ne v4, v5, :cond_5e

    move v4, v7

    .line 239
    goto :goto_5

    .line 240
    :cond_5e
    iget-object v4, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_83

    .line 242
    iget-boolean v4, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    if-eqz v4, :cond_71

    .line 243
    iget-object v4, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v5, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_5

    .line 244
    :cond_71
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 245
    .local v2, val:Ljava/lang/String;
    iget-object v3, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 246
    .local v3, val1:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_81

    move v4, v7

    goto :goto_5

    :cond_81
    move v4, v6

    goto :goto_5

    .line 248
    .end local v2           #val:Ljava/lang/String;
    .end local v3           #val1:Ljava/lang/String;
    :cond_83
    iget-object v4, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v5, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_5
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getValueAsObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-eqz v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    goto :goto_6
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValueQuoted()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "n"

    .prologue
    .line 135
    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setQuotedValue()V
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    .line 112
    const-string v0, "\""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .registers 2
    .parameter "sep"

    .prologue
    .line 103
    iput-object p1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValue;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    .line 274
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    move-object v0, v1

    .line 275
    .local v0, retval:Ljava/lang/String;
    :goto_6
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 276
    return-object v0

    .end local v0           #retval:Ljava/lang/String;
    :cond_9
    move-object v0, p1

    .line 274
    goto :goto_6
.end method

.method public setValueAsObject(Ljava/lang/Object;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 142
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 143
    return-void
.end method
