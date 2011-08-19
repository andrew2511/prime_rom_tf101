.class public final Ljava/lang/Boolean;
.super Ljava/lang/Object;
.source "Boolean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/Boolean; = null

.field public static final TRUE:Ljava/lang/Boolean; = null

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x32df8d7f2a630512L


# instance fields
.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    const-class v0, [Z

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 50
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean p1, p0, Ljava/lang/Boolean;->value:Z

    .line 81
    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .registers 2
    .parameter "string"

    .prologue
    .line 162
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 163
    :cond_8
    const/4 v0, 0x0

    .line 165
    :goto_9
    return v0

    :cond_a
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method public static parseBoolean(Ljava/lang/String;)Z
    .registers 2
    .parameter "s"

    .prologue
    .line 179
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static toString(Z)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 190
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2
    .parameter "string"

    .prologue
    .line 203
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_8
.end method

.method public static valueOf(Z)Ljava/lang/Boolean;
    .registers 2
    .parameter "b"

    .prologue
    .line 219
    if-eqz p0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method


# virtual methods
.method public booleanValue()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    return v0
.end method

.method public compareTo(Ljava/lang/Boolean;)I
    .registers 4
    .parameter "that"

    .prologue
    .line 124
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    iget-boolean v1, p1, Ljava/lang/Boolean;->value:Z

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_7

    :cond_e
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 105
    if-eq p1, p0, :cond_e

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    iget-boolean v1, p1, Ljava/lang/Boolean;->value:Z

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x4cf

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x4d5

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
