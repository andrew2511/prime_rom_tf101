.class public Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/binxml/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringID"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/binxml/Dictionary$StringID$Comparator;
    }
.end annotation


# static fields
.field static final comparator:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID$Comparator;


# instance fields
.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID$Comparator;

    invoke-direct {v0}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID$Comparator;-><init>()V

    sput-object v0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->comparator:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID$Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->id:I

    .line 210
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->id:I

    .line 174
    return-void
.end method

.method public static getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    sget-object v0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->comparator:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID$Comparator;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 196
    instance-of v0, p1, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    if-eqz v0, :cond_1

    .line 197
    check-cast p1, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    .end local p1
    iget v0, p1, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->id:I

    iget v1, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 197
    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v2

    .line 198
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->id:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->id:I

    return v0
.end method
