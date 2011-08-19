.class public Lcom/infraware/common/CoCoreFunctionInterface;
.super Ljava/lang/Object;
.source "CoCoreFunctionInterface.java"

# interfaces
.implements Lcom/infraware/evengine/E;
.implements Lcom/infraware/evengine/E$EV_DOCEXTENSION_TYPE;
.implements Lcom/infraware/evengine/E$EV_SHEET_FIND_REPLACE;
.implements Lcom/infraware/evengine/E$EV_ZOOM_TYPE;
.implements Lcom/infraware/evengine/E$EV_KEY_TYPE;
.implements Lcom/infraware/evengine/E$EV_WORD_CELL_MERGE_SEP;
.implements Lcom/infraware/evengine/E$EV_CELL_INSERT_MODE;
.implements Lcom/infraware/evengine/E$EV_CELL_INSERT_DELETE;
.implements Lcom/infraware/evengine/E$EV_CELL_DELETE_MODE;
.implements Lcom/infraware/evengine/E$EV_BORDER_STYLE;
.implements Lcom/infraware/evengine/E$EV_BORDER_TYPE;
.implements Lcom/infraware/evengine/E$EV_MASK_ATT;
.implements Lcom/infraware/evengine/E$EV_EDIT_OBJECT_TYPE;
.implements Lcom/infraware/evengine/E$EV_CARET_MARK;
.implements Lcom/infraware/evengine/E$EV_BULLETNUMBER_TYPE;
.implements Lcom/infraware/evengine/E$EV_BULLET_NUMBERING;
.implements Lcom/infraware/evengine/E$EV_PARAGRAPH_ALIGN;
.implements Lcom/infraware/evengine/E$EV_INDENTATION;
.implements Lcom/infraware/evengine/E$EV_REPLACE_TYPE;
.implements Lcom/infraware/evengine/E$EV_ERROR_CODE;
.implements Lcom/infraware/evengine/E$EV_STATUS;
.implements Lcom/infraware/evengine/E$EV_EDIT_CURSOR_MODE;
.implements Lcom/infraware/evengine/E$EV_EDIT_MODE;
.implements Lcom/infraware/evengine/E$EV_REDO_UNDO;
.implements Lcom/infraware/evengine/E$EV_MOVE_TYPE;
.implements Lcom/infraware/evengine/E$EV_SHEET_EDIT;
.implements Lcom/infraware/evengine/E$EV_SHEET_SHPW_ROWCOL;
.implements Lcom/infraware/evengine/E$EV_SHEET_INSERT_CELL;
.implements Lcom/infraware/evengine/E$EV_SHEET_CHART_TYPE;
.implements Lcom/infraware/evengine/E$EV_SHEET_CHART_SERIES;
.implements Lcom/infraware/evengine/E$EV_SHEET_CHART_LEGEND;
.implements Lcom/infraware/evengine/E$EV_SHEERT_CHART_DIMENSIONS;
.implements Lcom/infraware/evengine/E$EV_SHEET_FORMAT;


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$ALIGN_MODE:[I = null

.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE:[I = null

.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_CURRENCY_TYPE:[I = null

.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_DATE_TYPE:[I = null

.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_FRACTION_TYPE:[I = null

.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_NEGATIVE_TYPE:[I = null

.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_TIME_TYPE:[I = null

.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CELL_SELECT_MODE:[I = null

.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CHART_LEGEND:[I = null

.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CHART_TYPE:[I = null

.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$INSERT_MODE:[I = null

.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$REPLACE_MODE:[I = null

.field private static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$VIEW_MODE:[I = null

.field private static final FALSE:I = 0x0

.field private static final LINE_SPACING_UNIT_SIZE:I = 0x19

.field private static final LOG_CAT:Ljava/lang/String; = "CoCoreFunctionInterface"

.field private static final TRUE:I = 0x1

.field public static final UNUSED_ARGUMENT:I = -0x270f

.field private static m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

.field private static m_oThis:Lcom/infraware/common/CoCoreFunctionInterface;


# instance fields
.field private final DEFAULT_MSG_DELAY_TIME:I

.field private final FILEPATH:Ljava/lang/String;

.field private final MSG_DELETE_CELL:I

.field private final MSG_INSERT_CELL:I

.field private final MSG_INSERT_ROWCOL:I

.field private final MSG_INSERT_TABLE:I

.field private final MSG_REDO:I

.field private final MSG_REFLOWTEXT:I

.field private final MSG_SAVE:I

.field private final MSG_UNDO:I

.field m_aszKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_bContiousMode:Z

.field m_bEditMode:Z

.field m_bReflowMode:Z

.field m_bSortByRows:Z

.field private m_nDocumentType:I

.field protected m_oBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

.field m_oBookClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_oHandler:Landroid/os/Handler;

.field private m_oUserClasses:Lcom/infraware/common/UserClasses;

.field m_szFontList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_szSavePath:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$ALIGN_MODE()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$ALIGN_MODE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$ALIGN_MODE;->values()[Lcom/infraware/common/UserClasses$ALIGN_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_BOTTOM:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_CENTER:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_JUSTIFY:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_LEFT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_MIDDLE:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_NONE:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_RIGHT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_TOP:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$ALIGN_MODE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->values()[Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_6
    :try_start_6
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_7
    :try_start_7
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_8
    :try_start_8
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_9
    :try_start_9
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_a
    :try_start_a
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    :goto_b
    :try_start_b
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_c
    :try_start_c
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_d
    :try_start_d
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_e
    :try_start_e
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_f
    :try_start_f
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_10
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_10

    :catch_1
    move-exception v1

    goto :goto_f

    :catch_2
    move-exception v1

    goto :goto_e

    :catch_3
    move-exception v1

    goto :goto_d

    :catch_4
    move-exception v1

    goto :goto_c

    :catch_5
    move-exception v1

    goto :goto_b

    :catch_6
    move-exception v1

    goto :goto_a

    :catch_7
    move-exception v1

    goto :goto_9

    :catch_8
    move-exception v1

    goto :goto_8

    :catch_9
    move-exception v1

    goto :goto_7

    :catch_a
    move-exception v1

    goto :goto_6

    :catch_b
    move-exception v1

    goto/16 :goto_5

    :catch_c
    move-exception v1

    goto/16 :goto_4

    :catch_d
    move-exception v1

    goto/16 :goto_3

    :catch_e
    move-exception v1

    goto/16 :goto_2

    :catch_f
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_CURRENCY_TYPE()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_CURRENCY_TYPE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->values()[Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_CNY:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_EUR:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_GBP:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_JPY:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_KRW:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_NONE:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_USD:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_CURRENCY_TYPE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_DATE_TYPE()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_DATE_TYPE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->values()[Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_1:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_2:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_3:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_4:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_5:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_6:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_7:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_8:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_DATE_TYPE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_FRACTION_TYPE()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_FRACTION_TYPE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->values()[Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_BY_10:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_BY_100:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_BY_16:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_BY_2:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_BY_4:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_BY_8:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_UPTO_1_DIGIT:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_UPTO_2_DIGIT:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_UPTO_3_DIGIT:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_FRACTION_TYPE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_NEGATIVE_TYPE()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_NEGATIVE_TYPE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->values()[Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_BRACKETS_BLACK:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_BRACKETS_RED:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_RED:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_SIGN_BLACK:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_SIGN_RED:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_NEGATIVE_TYPE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_TIME_TYPE()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_TIME_TYPE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->values()[Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_1:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_2:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_3:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_4:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_TIME_TYPE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CELL_SELECT_MODE()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_SELECT_MODE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;->values()[Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;->SELECT_MODE_CELLS:Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;->SELECT_MODE_COLUMNS:Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;->SELECT_MODE_ROWS:Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;->SELECT_MODE_TABLE:Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_SELECT_MODE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CHART_LEGEND()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CHART_LEGEND:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$CHART_LEGEND;->values()[Lcom/infraware/common/UserClasses$CHART_LEGEND;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$CHART_LEGEND;->CHART_LEGEND_NONE:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CHART_LEGEND;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$CHART_LEGEND;->CHART_LEGEND_ON_BOTTOM:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CHART_LEGEND;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$CHART_LEGEND;->CHART_LEGEND_ON_LEFT:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CHART_LEGEND;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/common/UserClasses$CHART_LEGEND;->CHART_LEGEND_ON_RIGHT:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CHART_LEGEND;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/common/UserClasses$CHART_LEGEND;->CHART_LEGEND_ON_RIGHTCORNER:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CHART_LEGEND;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/common/UserClasses$CHART_LEGEND;->CHART_LEGEND_ON_TOP:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CHART_LEGEND;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CHART_LEGEND:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$CHART_TYPE()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CHART_TYPE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$CHART_TYPE;->values()[Lcom/infraware/common/UserClasses$CHART_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$CHART_TYPE;->CHART_TYPE_BAR:Lcom/infraware/common/UserClasses$CHART_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CHART_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$CHART_TYPE;->CHART_TYPE_COLUMN:Lcom/infraware/common/UserClasses$CHART_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CHART_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$CHART_TYPE;->CHART_TYPE_LINE:Lcom/infraware/common/UserClasses$CHART_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CHART_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/common/UserClasses$CHART_TYPE;->CHART_TYPE_PIE:Lcom/infraware/common/UserClasses$CHART_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CHART_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CHART_TYPE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$INSERT_MODE()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$INSERT_MODE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$INSERT_MODE;->values()[Lcom/infraware/common/UserClasses$INSERT_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$INSERT_MODE;->INSERT_BOTTOM:Lcom/infraware/common/UserClasses$INSERT_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$INSERT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$INSERT_MODE;->INSERT_LEFT:Lcom/infraware/common/UserClasses$INSERT_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$INSERT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$INSERT_MODE;->INSERT_RIGHT:Lcom/infraware/common/UserClasses$INSERT_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$INSERT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/common/UserClasses$INSERT_MODE;->INSERT_TOP:Lcom/infraware/common/UserClasses$INSERT_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$INSERT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/common/UserClasses$INSERT_MODE;->MOVE_HORIZONTAL:Lcom/infraware/common/UserClasses$INSERT_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$INSERT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/common/UserClasses$INSERT_MODE;->MOVE_VERTICAL:Lcom/infraware/common/UserClasses$INSERT_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$INSERT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$INSERT_MODE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$REPLACE_MODE()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$REPLACE_MODE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$REPLACE_MODE;->values()[Lcom/infraware/common/UserClasses$REPLACE_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$REPLACE_MODE;->FIND_ONLY:Lcom/infraware/common/UserClasses$REPLACE_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$REPLACE_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$REPLACE_MODE;->REPLACE_ALL:Lcom/infraware/common/UserClasses$REPLACE_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$REPLACE_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$REPLACE_MODE;->REPLACE_CURRENT_ONLY:Lcom/infraware/common/UserClasses$REPLACE_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$REPLACE_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$REPLACE_MODE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$common$UserClasses$VIEW_MODE()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$VIEW_MODE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/common/UserClasses$VIEW_MODE;->values()[Lcom/infraware/common/UserClasses$VIEW_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_CHANGE_TEXT_ONLY:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$VIEW_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_HEIGHT:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$VIEW_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_ORIGIN:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$VIEW_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_REFLOW_TEXT:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$VIEW_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$VIEW_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$VIEW_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$VIEW_MODE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 61
    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oThis:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "/data/data/com.infraware.PolarisOfficeForTablet/bmvbookclip.dat"

    iput-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->FILEPATH:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    .line 70
    iput v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    .line 71
    iput-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oBookClipList:Ljava/util/ArrayList;

    .line 72
    iput-boolean v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bReflowMode:Z

    .line 73
    iput-boolean v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bContiousMode:Z

    .line 74
    iput-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    .line 75
    iput-boolean v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bSortByRows:Z

    .line 76
    iput-boolean v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bEditMode:Z

    .line 78
    iput-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szSavePath:Ljava/lang/String;

    .line 3136
    const/16 v0, 0x12c

    iput v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->DEFAULT_MSG_DELAY_TIME:I

    .line 3137
    iput v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->MSG_UNDO:I

    .line 3138
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->MSG_REDO:I

    .line 3139
    const/4 v0, 0x2

    iput v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->MSG_REFLOWTEXT:I

    .line 3140
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->MSG_INSERT_TABLE:I

    .line 3141
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->MSG_INSERT_CELL:I

    .line 3142
    const/4 v0, 0x5

    iput v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->MSG_DELETE_CELL:I

    .line 3143
    const/4 v0, 0x6

    iput v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->MSG_INSERT_ROWCOL:I

    .line 3144
    const/4 v0, 0x7

    iput v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->MSG_SAVE:I

    .line 3145
    new-instance v0, Lcom/infraware/common/CoCoreFunctionInterface$1;

    invoke-direct {v0, p0}, Lcom/infraware/common/CoCoreFunctionInterface$1;-><init>(Lcom/infraware/common/CoCoreFunctionInterface;)V

    iput-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oHandler:Landroid/os/Handler;

    .line 85
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 86
    new-instance v0, Lcom/infraware/common/UserClasses;

    invoke-direct {v0}, Lcom/infraware/common/UserClasses;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oUserClasses:Lcom/infraware/common/UserClasses;

    .line 88
    sput-object p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oThis:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 89
    return-void
.end method

.method static synthetic access$0()Lcom/infraware/evengine/ICoEngineInterface;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/common/CoCoreFunctionInterface;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    return v0
.end method

.method static synthetic access$2(Lcom/infraware/common/CoCoreFunctionInterface;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/infraware/common/CoCoreFunctionInterface;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oThis:Lcom/infraware/common/CoCoreFunctionInterface;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-direct {v0}, Lcom/infraware/common/CoCoreFunctionInterface;-><init>()V

    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oThis:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 97
    :cond_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oThis:Lcom/infraware/common/CoCoreFunctionInterface;

    return-object v0
.end method

.method private sendMessageToHandler(III)V
    .locals 4
    .parameter "a_nMsgWhat"
    .parameter "a_nArg1"
    .parameter "a_nArg2"

    .prologue
    .line 3222
    iget-object v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3223
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3224
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 3225
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 3226
    iget-object v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3227
    return-void
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ICancel()V

    .line 193
    return-void
.end method

.method public GetTextToSpeachString(III)V
    .locals 1
    .parameter "nSize"
    .parameter "nDir"
    .parameter "nTextline"

    .prologue
    .line 177
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetTextToSpeachString(III)V

    .line 178
    return-void
.end method

.method public Open(Ljava/lang/String;IIIII)V
    .locals 9
    .parameter "a_sFilePath"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "EEV_FILE_LOAD_TYPE"
    .parameter "a_nLocale"
    .parameter "a_bLandScape"

    .prologue
    const/4 v7, 0x0

    .line 187
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->IOpen(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public SaveBookMark()V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISaveBookMark()V

    .line 183
    return-void
.end method

.method public addBookClip(Ljava/lang/String;)I
    .locals 5
    .parameter "a_szName"

    .prologue
    const/4 v4, 0x0

    .line 266
    iget v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bEditMode:Z

    if-eqz v2, :cond_1

    .line 268
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2, v4, p1}, Lcom/infraware/evengine/ICoEngineInterface;->IBookmarkEditor(ILjava/lang/String;)V

    move v2, v4

    .line 279
    :goto_0
    return v2

    .line 273
    :cond_1
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/evengine/EV;->getBookClip()Lcom/infraware/evengine/EV$BOOK_CLIP;

    move-result-object v1

    .line 274
    .local v1, oClip:Lcom/infraware/evengine/EV$BOOK_CLIP;
    const-string v2, "/data/data/com.infraware.PolarisOfficeForTablet/bmvbookclip.dat"

    iput-object v2, v1, Lcom/infraware/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    .line 275
    iput-object p1, v1, Lcom/infraware/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    .line 276
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ISetBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)I

    move-result v0

    .line 277
    .local v0, nRet:I
    const-string v2, "CoCoreFunctionInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AddBookClip return ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 279
    goto :goto_0
.end method

.method public applyBookClip(Ljava/lang/String;)V
    .locals 4
    .parameter "a_szClipName"

    .prologue
    .line 286
    iget v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bEditMode:Z

    if-eqz v1, :cond_1

    .line 288
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/infraware/evengine/ICoEngineInterface;->IBookmarkEditor(ILjava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 293
    :cond_1
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getBookClip()Lcom/infraware/evengine/EV$BOOK_CLIP;

    move-result-object v0

    .line 294
    .local v0, oClip:Lcom/infraware/evengine/EV$BOOK_CLIP;
    const-string v1, "/data/data/com.infraware.PolarisOfficeForTablet/bmvbookclip.dat"

    iput-object v1, v0, Lcom/infraware/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    .line 295
    iput-object p1, v0, Lcom/infraware/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    .line 296
    const-string v1, "CoCoreFunctionInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applyBookClip"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1, v0}, Lcom/infraware/evengine/ICoEngineInterface;->IApplyBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V

    goto :goto_0
.end method

.method public canInsertBookmark()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3107
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ICanInsertBookmark_Editor()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 3110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelFontUndo()V
    .locals 1

    .prologue
    .line 642
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ICancelFontAttribute()V

    .line 643
    return-void
.end method

.method public cancelTaskUndo()V
    .locals 1

    .prologue
    .line 647
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ICancelFontAttribute()V

    .line 648
    return-void
.end method

.method public changeMode(IIIZ)V
    .locals 3
    .parameter "a_nViewMode"
    .parameter "a_nDisplayWidth"
    .parameter "a_nDisplayHeight"
    .parameter "a_bRedraw"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    if-eqz p4, :cond_1

    move v0, v1

    .line 130
    .local v0, nReDraw:I
    :goto_0
    if-ne p1, v1, :cond_2

    .line 132
    iput-boolean v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bEditMode:Z

    .line 134
    iget-boolean v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bReflowMode:Z

    if-eqz v1, :cond_0

    .line 135
    iput-boolean v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bReflowMode:Z

    .line 138
    :cond_0
    :goto_1
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/infraware/evengine/ICoEngineInterface;->IChangeViewMode(IIII)V

    .line 139
    return-void

    .end local v0           #nReDraw:I
    :cond_1
    move v0, v2

    .line 129
    goto :goto_0

    .line 137
    .restart local v0       #nReDraw:I
    :cond_2
    iput-boolean v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bEditMode:Z

    goto :goto_1
.end method

.method public changeSheetName(Ljava/lang/String;Ljava/lang/String;)Lcom/infraware/common/UserClasses$SheetNameIndexInfo;
    .locals 8
    .parameter "a_strOri"
    .parameter "a_strDst"

    .prologue
    const/4 v4, 0x0

    .line 2200
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2201
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetInfo()Lcom/infraware/common/UserClasses$SheetNameIndexInfo;

    move-result-object v0

    .line 2207
    :goto_0
    return-object v0

    .line 2203
    :cond_0
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetInfo()Lcom/infraware/common/UserClasses$SheetNameIndexInfo;

    move-result-object v7

    .line 2204
    .local v7, oInfo:Lcom/infraware/common/UserClasses$SheetNameIndexInfo;
    iget-object v0, v7, Lcom/infraware/common/UserClasses$SheetNameIndexInfo;->aszSheetNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2205
    .local v3, nIndex:I
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x3

    move-object v2, p2

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetEdit(ILjava/lang/String;IIII)V

    .line 2207
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetInfo()Lcom/infraware/common/UserClasses$SheetNameIndexInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public clearSheet(I)V
    .locals 1
    .parameter "a_nMode"

    .prologue
    .line 2840
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetClear(I)V

    .line 2841
    return-void
.end method

.method public closeEngine()V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IClose()V

    .line 112
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IFinalize()V

    .line 113
    return-void
.end method

.method public copy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1993
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IEditDocument(IIILjava/lang/String;)V

    .line 1994
    return-void
.end method

.method public createBackupFile(Ljava/lang/String;)V
    .locals 13
    .parameter "szFileName"

    .prologue
    .line 358
    const/4 v10, 0x0

    .line 359
    .local v10, oFileSrc:Ljava/io/File;
    const/4 v8, 0x0

    .line 361
    .local v8, oFileDst:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    .end local v10           #oFileSrc:Ljava/io/File;
    .local v11, oFileSrc:Ljava/io/File;
    :try_start_1
    new-instance v9, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 363
    .end local v8           #oFileDst:Ljava/io/File;
    .local v9, oFileDst:Ljava/io/File;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 368
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 369
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 370
    .local v7, in:Ljava/io/FileInputStream;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 371
    .local v12, out:Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 372
    .local v0, fcin:Ljava/nio/channels/FileChannel;
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 374
    .local v5, fcout:Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    .line 375
    .local v3, size:J
    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 376
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 377
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 378
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 379
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v8, v9

    .end local v9           #oFileDst:Ljava/io/File;
    .restart local v8       #oFileDst:Ljava/io/File;
    move-object v10, v11

    .line 399
    .end local v0           #fcin:Ljava/nio/channels/FileChannel;
    .end local v3           #size:J
    .end local v5           #fcout:Ljava/nio/channels/FileChannel;
    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v11           #oFileSrc:Ljava/io/File;
    .end local v12           #out:Ljava/io/FileOutputStream;
    .restart local v10       #oFileSrc:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 385
    .local v6, e:Ljava/lang/NullPointerException;
    :goto_1
    const v1, 0x7f0a0315

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/infraware/PolarisOffice;->showToast(IZ)V

    .line 387
    if-eqz v8, :cond_1

    .line 388
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 390
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    move-object v6, v1

    .line 393
    .local v6, e:Ljava/io/IOException;
    :goto_2
    const v1, 0x7f0a0315

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/infraware/PolarisOffice;->showToast(IZ)V

    .line 395
    if-eqz v8, :cond_1

    .line 396
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 390
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #oFileSrc:Ljava/io/File;
    .restart local v11       #oFileSrc:Ljava/io/File;
    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v10, v11

    .end local v11           #oFileSrc:Ljava/io/File;
    .restart local v10       #oFileSrc:Ljava/io/File;
    goto :goto_2

    .end local v8           #oFileDst:Ljava/io/File;
    .end local v10           #oFileSrc:Ljava/io/File;
    .restart local v9       #oFileDst:Ljava/io/File;
    .restart local v11       #oFileSrc:Ljava/io/File;
    :catch_3
    move-exception v1

    move-object v6, v1

    move-object v8, v9

    .end local v9           #oFileDst:Ljava/io/File;
    .restart local v8       #oFileDst:Ljava/io/File;
    move-object v10, v11

    .end local v11           #oFileSrc:Ljava/io/File;
    .restart local v10       #oFileSrc:Ljava/io/File;
    goto :goto_2

    .line 382
    .end local v10           #oFileSrc:Ljava/io/File;
    .restart local v11       #oFileSrc:Ljava/io/File;
    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v10, v11

    .end local v11           #oFileSrc:Ljava/io/File;
    .restart local v10       #oFileSrc:Ljava/io/File;
    goto :goto_1

    .end local v8           #oFileDst:Ljava/io/File;
    .end local v10           #oFileSrc:Ljava/io/File;
    .restart local v9       #oFileDst:Ljava/io/File;
    .restart local v11       #oFileSrc:Ljava/io/File;
    :catch_5
    move-exception v1

    move-object v6, v1

    move-object v8, v9

    .end local v9           #oFileDst:Ljava/io/File;
    .restart local v8       #oFileDst:Ljava/io/File;
    move-object v10, v11

    .end local v11           #oFileSrc:Ljava/io/File;
    .restart local v10       #oFileSrc:Ljava/io/File;
    goto :goto_1

    .end local v8           #oFileDst:Ljava/io/File;
    .end local v10           #oFileSrc:Ljava/io/File;
    .restart local v9       #oFileDst:Ljava/io/File;
    .restart local v11       #oFileSrc:Ljava/io/File;
    :cond_2
    move-object v8, v9

    .end local v9           #oFileDst:Ljava/io/File;
    .restart local v8       #oFileDst:Ljava/io/File;
    move-object v10, v11

    .end local v11           #oFileSrc:Ljava/io/File;
    .restart local v10       #oFileSrc:Ljava/io/File;
    goto :goto_0
.end method

.method public cut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1997
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/infraware/evengine/ICoEngineInterface;->IEditDocument(IIILjava/lang/String;)V

    .line 1998
    return-void
.end method

.method public decreaseDecimalPoint()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2743
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v9

    .line 2744
    .local v9, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    if-eq v0, v10, :cond_0

    .line 2745
    iget v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2746
    iget v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2747
    iget v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 2749
    :cond_0
    iget v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    sub-int/2addr v0, v10

    if-ltz v0, :cond_1

    .line 2751
    iget v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    sub-int/2addr v0, v10

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    .line 2752
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    iget v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iget v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    iget v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    iget v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    iget v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    iget v7, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    iget v8, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFormat(IIIIIIII)V

    move v0, v10

    .line 2756
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decreaseIndent()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 943
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v0

    .line 944
    .local v0, paraInfo:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    iget v1, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 945
    iget v1, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nRightMarginValue:I

    iget v3, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineValue:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->setParagraphIndent(III)V

    .line 946
    :cond_0
    return-void
.end method

.method public decreaseLineSpace()V
    .locals 4

    .prologue
    const/16 v3, 0x19

    .line 968
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v1

    .line 970
    .local v1, paraInfo:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    const/16 v0, 0x19

    .line 971
    .local v0, nReduceSize:I
    iget v2, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpaceValue:I

    if-gt v2, v3, :cond_0

    .line 980
    :goto_0
    return-void

    .line 974
    :cond_0
    iget v2, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpaceValue:I

    sub-int v0, v2, v0

    .line 977
    if-ge v0, v3, :cond_1

    .line 978
    const/16 v0, 0x19

    .line 979
    :cond_1
    iget v2, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaTopValue:I

    iget v3, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaBottomValue:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->setLinespace(III)V

    goto :goto_0
.end method

.method public deleteBookClip(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "a_szName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 305
    iget v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bEditMode:Z

    if-eqz v1, :cond_1

    .line 307
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1, v3, p1}, Lcom/infraware/evengine/ICoEngineInterface;->IBookmarkEditor(ILjava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getBookClipList()Ljava/util/ArrayList;

    move-result-object v1

    .line 316
    :goto_0
    return-object v1

    .line 312
    :cond_1
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getBookClip()Lcom/infraware/evengine/EV$BOOK_CLIP;

    move-result-object v0

    .line 313
    .local v0, oClip:Lcom/infraware/evengine/EV$BOOK_CLIP;
    const-string v1, "/data/data/com.infraware.PolarisOfficeForTablet/bmvbookclip.dat"

    iput-object v1, v0, Lcom/infraware/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    .line 314
    iput-object p1, v0, Lcom/infraware/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    .line 315
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1, v0}, Lcom/infraware/evengine/ICoEngineInterface;->IDeleteBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V

    .line 316
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getBookClipList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public deleteCell(Lcom/infraware/common/UserClasses$DELETE_MODE;)V
    .locals 3
    .parameter "a_eDeletemode"

    .prologue
    const/4 v2, 0x5

    const/16 v1, -0x270f

    .line 1946
    sget-object v0, Lcom/infraware/common/UserClasses$DELETE_MODE;->DELETE_ROW:Lcom/infraware/common/UserClasses$DELETE_MODE;

    if-ne p1, v0, :cond_0

    .line 1947
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->sendMessageToHandler(III)V

    .line 1950
    :goto_0
    return-void

    .line 1949
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->sendMessageToHandler(III)V

    goto :goto_0
.end method

.method public deleteSheet(I)V
    .locals 7
    .parameter "a_nTargetSheetIndex"

    .prologue
    const/4 v4, 0x0

    .line 2195
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    move v3, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetEdit(ILjava/lang/String;IIII)V

    .line 2196
    return-void
.end method

.method public deleteSheetCell(I)V
    .locals 2
    .parameter "a_nMode"

    .prologue
    .line 2845
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetInsertCell(II)V

    .line 2846
    return-void
.end method

.method public deleteSlide()V
    .locals 4

    .prologue
    .line 2873
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentPageIndex()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideAddMove(III)V

    .line 2874
    return-void
.end method

.method public duplicateSlide()V
    .locals 4

    .prologue
    .line 2868
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentPageIndex()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideAddMove(III)V

    .line 2869
    return-void
.end method

.method public fillCellColor(I)V
    .locals 12
    .parameter "a_nColorIndex"

    .prologue
    const/4 v2, 0x0

    .line 1019
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 1021
    :cond_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetSetColor(I)V

    .line 1033
    :goto_0
    return-void

    .line 1025
    :cond_1
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/evengine/EV$BWP_OP_INFO;

    move-result-object v11

    .line 1026
    .local v11, opInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;
    iget v0, v11, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    .line 1027
    iget v0, v11, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_3

    .line 1029
    :cond_2
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->ISetColors(III)V

    goto :goto_0

    .line 1032
    :cond_3
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/16 v1, 0x100

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, p1

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Lcom/infraware/evengine/ICoEngineInterface;->ISetBorder(IIIIIIIIIZ)V

    goto :goto_0
.end method

.method public findText(Ljava/lang/String;ZZZ)V
    .locals 8
    .parameter "a_szText"
    .parameter "a_bMatchCase"
    .parameter "a_bMatchWhole"
    .parameter "a_bFindForward"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 196
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_4

    .line 198
    :cond_0
    const/4 v6, 0x0

    .line 199
    .local v6, nFlag:I
    if-eqz p2, :cond_1

    .line 200
    or-int/lit8 v6, v6, 0x2

    .line 201
    :cond_1
    if-eqz p3, :cond_2

    .line 202
    or-int/lit8 v6, v6, 0x4

    .line 203
    :cond_2
    if-nez p4, :cond_3

    .line 204
    or-int/lit8 v6, v6, 0x8

    .line 205
    :cond_3
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v6}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    .end local v6           #nFlag:I
    :goto_0
    return-void

    .line 209
    :cond_4
    if-eqz p2, :cond_5

    move v3, v5

    .line 210
    .local v3, nCase:I
    :goto_1
    if-eqz p3, :cond_6

    move v2, v5

    .line 211
    .local v2, nWholeWord:I
    :goto_2
    if-eqz p4, :cond_7

    move v4, v7

    .line 213
    .local v4, nDirection:I
    :goto_3
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->ISearchStart(Ljava/lang/String;IIII)V

    goto :goto_0

    .end local v2           #nWholeWord:I
    .end local v3           #nCase:I
    .end local v4           #nDirection:I
    :cond_5
    move v3, v7

    .line 209
    goto :goto_1

    .restart local v3       #nCase:I
    :cond_6
    move v2, v7

    .line 210
    goto :goto_2

    .restart local v2       #nWholeWord:I
    :cond_7
    move v4, v5

    .line 211
    goto :goto_3
.end method

.method public findTextStop()V
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISearchStop()V

    .line 220
    return-void
.end method

.method public getBWPCellStatusInfo()J
    .locals 2

    .prologue
    .line 3097
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetBWPCellStatusInfo_Editor()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBWPInfo()Lcom/infraware/evengine/EV$BWP_OP_INFO;
    .locals 2

    .prologue
    .line 2976
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 2977
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CoCoreFunctionInterface - getBWPInfo"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2979
    :cond_1
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    .line 2980
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    return-object v0
.end method

.method public getBookClipList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oBookClipList:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oBookClipList:Ljava/util/ArrayList;

    .line 231
    :goto_0
    iget v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_4

    :cond_0
    iget-boolean v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bEditMode:Z

    if-eqz v3, :cond_4

    .line 233
    sget-object v3, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetBookmarkCount_Editor()I

    move-result v1

    .line 234
    .local v1, nRet:I
    if-lez v1, :cond_1

    .line 236
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_3

    .line 239
    .end local v0           #i:I
    :cond_1
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oBookClipList:Ljava/util/ArrayList;

    .line 258
    :goto_2
    return-object v3

    .line 229
    .end local v1           #nRet:I
    :cond_2
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oBookClipList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 237
    .restart local v0       #i:I
    .restart local v1       #nRet:I
    :cond_3
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oBookClipList:Ljava/util/ArrayList;

    sget-object v4, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v4, v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetBookmarkInfo_Editor(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    .end local v0           #i:I
    .end local v1           #nRet:I
    :cond_4
    sget-object v3, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/evengine/EV;->getBookClip()Lcom/infraware/evengine/EV$BOOK_CLIP;

    move-result-object v2

    .line 244
    .local v2, oClip:Lcom/infraware/evengine/EV$BOOK_CLIP;
    const-string v3, "/data/data/com.infraware.PolarisOfficeForTablet/bmvbookclip.dat"

    iput-object v3, v2, Lcom/infraware/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    .line 245
    sget-object v3, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetBookClipCount(Lcom/infraware/evengine/EV$BOOK_CLIP;)I

    move-result v1

    .line 246
    .restart local v1       #nRet:I
    const-string v3, "CoCoreFunctionInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetBookClipCount nRet = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-lez v1, :cond_5

    .line 249
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-lt v0, v1, :cond_6

    .line 258
    .end local v0           #i:I
    :cond_5
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oBookClipList:Ljava/util/ArrayList;

    goto :goto_2

    .line 251
    .restart local v0       #i:I
    :cond_6
    const-string v3, "/data/data/com.infraware.PolarisOfficeForTablet/bmvbookclip.dat"

    iput-object v3, v2, Lcom/infraware/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    .line 252
    const-string v3, "CoCoreFunctionInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IGetBookClipName FilePath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/infraware/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v3, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3, v0, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetBookClipName(ILcom/infraware/evengine/EV$BOOK_CLIP;)V

    .line 254
    const-string v3, "CoCoreFunctionInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetBookClipCount nRet = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/infraware/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oBookClipList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/infraware/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getBulletType()Lcom/infraware/evengine/EV$BULLET_TYPE;
    .locals 1

    .prologue
    .line 994
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetBulletType_Editor()Lcom/infraware/evengine/EV$BULLET_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public getCaretInfo()Lcom/infraware/evengine/EV$CARET_INFO;
    .locals 1

    .prologue
    .line 3081
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCaretInfo_Editor()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v0

    return-object v0
.end method

.method public getCellFormat()Lcom/infraware/common/UserClasses$CELL_FORMAT;
    .locals 3

    .prologue
    .line 2311
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT;->CELL_FORMAT_GENERAL:Lcom/infraware/common/UserClasses$CELL_FORMAT;

    .line 2312
    .local v0, oFormat:Lcom/infraware/common/UserClasses$CELL_FORMAT;
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    .line 2313
    .local v1, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget v2, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    packed-switch v2, :pswitch_data_0

    .line 2326
    :goto_0
    return-object v0

    .line 2315
    :pswitch_0
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT;->CELL_FORMAT_GENERAL:Lcom/infraware/common/UserClasses$CELL_FORMAT;

    goto :goto_0

    .line 2316
    :pswitch_1
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT;->CELL_FORMAT_NUMBER:Lcom/infraware/common/UserClasses$CELL_FORMAT;

    goto :goto_0

    .line 2317
    :pswitch_2
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT;->CELL_FORMAT_CURRENCY:Lcom/infraware/common/UserClasses$CELL_FORMAT;

    goto :goto_0

    .line 2318
    :pswitch_3
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT;->CELL_FORMAT_DATE:Lcom/infraware/common/UserClasses$CELL_FORMAT;

    goto :goto_0

    .line 2319
    :pswitch_4
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT;->CELL_FORMAT_TIME:Lcom/infraware/common/UserClasses$CELL_FORMAT;

    goto :goto_0

    .line 2320
    :pswitch_5
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT;->CELL_FORMAT_PERCENTAGE:Lcom/infraware/common/UserClasses$CELL_FORMAT;

    goto :goto_0

    .line 2321
    :pswitch_6
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT;->CELL_FORMAT_FRACTION:Lcom/infraware/common/UserClasses$CELL_FORMAT;

    goto :goto_0

    .line 2322
    :pswitch_7
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT;->CELL_FORMAT_SCIENTIFIC:Lcom/infraware/common/UserClasses$CELL_FORMAT;

    goto :goto_0

    .line 2323
    :pswitch_8
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT;->CELL_FORMAT_TEXT:Lcom/infraware/common/UserClasses$CELL_FORMAT;

    goto :goto_0

    .line 2324
    :pswitch_9
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT;->CELL_FORMAT_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT;

    goto :goto_0

    .line 2313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getChartInfo()Lcom/infraware/common/UserClasses$ChartInfo;
    .locals 3

    .prologue
    .line 2097
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetChartInfo()Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;

    move-result-object v1

    .line 2098
    .local v1, oEChartInfo:Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;
    iget-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oUserClasses:Lcom/infraware/common/UserClasses;

    invoke-virtual {v2}, Lcom/infraware/common/UserClasses;->getChartInfo()Lcom/infraware/common/UserClasses$ChartInfo;

    move-result-object v0

    .line 2099
    .local v0, oChartInfo:Lcom/infraware/common/UserClasses$ChartInfo;
    invoke-virtual {v0}, Lcom/infraware/common/UserClasses$ChartInfo;->clear()V

    .line 2101
    iget v2, v1, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->nChart:I

    packed-switch v2, :pswitch_data_0

    .line 2109
    :goto_0
    iget v2, v1, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->nSeriesIn:I

    packed-switch v2, :pswitch_data_1

    .line 2115
    :goto_1
    iget v2, v1, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->nLegend:I

    packed-switch v2, :pswitch_data_2

    .line 2124
    :goto_2
    iget-object v2, v1, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->szTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->szTItle:Ljava/lang/String;

    .line 2125
    iget-object v2, v1, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->szXAxis:Ljava/lang/String;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->szXAxis:Ljava/lang/String;

    .line 2126
    iget-object v2, v1, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->szYAxis:Ljava/lang/String;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->szYAxis:Ljava/lang/String;

    .line 2127
    iget-object v2, v1, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->tRange:Lcom/infraware/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    iput v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->nCol1:I

    .line 2128
    iget-object v2, v1, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->tRange:Lcom/infraware/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    iput v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->nCol2:I

    .line 2129
    iget-object v2, v1, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->tRange:Lcom/infraware/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    iput v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->nRow1:I

    .line 2130
    iget-object v2, v1, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->tRange:Lcom/infraware/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    iput v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->nRow2:I

    .line 2132
    return-object v0

    .line 2103
    :pswitch_0
    sget-object v2, Lcom/infraware/common/UserClasses$CHART_TYPE;->CHART_TYPE_COLUMN:Lcom/infraware/common/UserClasses$CHART_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->eType:Lcom/infraware/common/UserClasses$CHART_TYPE;

    goto :goto_0

    .line 2104
    :pswitch_1
    sget-object v2, Lcom/infraware/common/UserClasses$CHART_TYPE;->CHART_TYPE_BAR:Lcom/infraware/common/UserClasses$CHART_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->eType:Lcom/infraware/common/UserClasses$CHART_TYPE;

    goto :goto_0

    .line 2105
    :pswitch_2
    sget-object v2, Lcom/infraware/common/UserClasses$CHART_TYPE;->CHART_TYPE_LINE:Lcom/infraware/common/UserClasses$CHART_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->eType:Lcom/infraware/common/UserClasses$CHART_TYPE;

    goto :goto_0

    .line 2106
    :pswitch_3
    sget-object v2, Lcom/infraware/common/UserClasses$CHART_TYPE;->CHART_TYPE_PIE:Lcom/infraware/common/UserClasses$CHART_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->eType:Lcom/infraware/common/UserClasses$CHART_TYPE;

    goto :goto_0

    .line 2111
    :pswitch_4
    sget-object v2, Lcom/infraware/common/UserClasses$CHART_SERIES;->CHART_SERIES_IN_ROWS:Lcom/infraware/common/UserClasses$CHART_SERIES;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->eSeries:Lcom/infraware/common/UserClasses$CHART_SERIES;

    goto :goto_1

    .line 2112
    :pswitch_5
    sget-object v2, Lcom/infraware/common/UserClasses$CHART_SERIES;->CHART_SERIES_IN_COLUMNS:Lcom/infraware/common/UserClasses$CHART_SERIES;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->eSeries:Lcom/infraware/common/UserClasses$CHART_SERIES;

    goto :goto_1

    .line 2117
    :pswitch_6
    sget-object v2, Lcom/infraware/common/UserClasses$CHART_LEGEND;->CHART_LEGEND_NONE:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->eLegend:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    goto :goto_2

    .line 2118
    :pswitch_7
    sget-object v2, Lcom/infraware/common/UserClasses$CHART_LEGEND;->CHART_LEGEND_ON_LEFT:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->eLegend:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    goto :goto_2

    .line 2119
    :pswitch_8
    sget-object v2, Lcom/infraware/common/UserClasses$CHART_LEGEND;->CHART_LEGEND_ON_TOP:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->eLegend:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    goto :goto_2

    .line 2120
    :pswitch_9
    sget-object v2, Lcom/infraware/common/UserClasses$CHART_LEGEND;->CHART_LEGEND_ON_RIGHT:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->eLegend:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    goto :goto_2

    .line 2121
    :pswitch_a
    sget-object v2, Lcom/infraware/common/UserClasses$CHART_LEGEND;->CHART_LEGEND_ON_BOTTOM:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ChartInfo;->eLegend:Lcom/infraware/common/UserClasses$CHART_LEGEND;

    goto :goto_2

    .line 2101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 2109
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2115
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public getContinousMode()Z
    .locals 1

    .prologue
    .line 2922
    iget-boolean v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bContiousMode:Z

    return v0
.end method

.method public getCurrentPageIndex()I
    .locals 1

    .prologue
    .line 2860
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nCurPage:I

    return v0
.end method

.method public getCurrentSheetIndex()I
    .locals 1

    .prologue
    .line 3017
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCurrentSheetIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentZoomRatio()I
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    return v0
.end method

.method public getFillBorderStyles()Lcom/infraware/common/UserClasses$FillBorderInfo;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1227
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetBorderProperty()Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v0

    .line 1228
    .local v0, oBorderInfo:Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;
    iget-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oUserClasses:Lcom/infraware/common/UserClasses;

    invoke-virtual {v2}, Lcom/infraware/common/UserClasses;->getFillBorderInfo()Lcom/infraware/common/UserClasses$FillBorderInfo;

    move-result-object v1

    .line 1229
    .local v1, oInfo:Lcom/infraware/common/UserClasses$FillBorderInfo;
    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$FillBorderInfo;->clear()V

    .line 1231
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderMask:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 1232
    iput-boolean v4, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->isExistHorizontalBorder:Z

    .line 1233
    :cond_0
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderMask:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 1234
    iput-boolean v4, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->isExistVerticalBorder:Z

    .line 1236
    :cond_1
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nCellColor:I

    iput v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->nFillColor:I

    .line 1237
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderLeftColor:I

    iput v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->nLColor:I

    .line 1238
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderTopColor:I

    iput v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->nTColor:I

    .line 1239
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderRightColor:I

    iput v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->nRColor:I

    .line 1240
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderBottomColor:I

    iput v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->nBColor:I

    .line 1241
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderHorizontalColor:I

    iput v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->nHColor:I

    .line 1242
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderVerticalColor:I

    iput v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->nVColor:I

    .line 1244
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderStyle:I

    shr-int/lit8 v2, v2, 0x14

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    packed-switch v2, :pswitch_data_0

    .line 1263
    :goto_0
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderStyle:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    packed-switch v2, :pswitch_data_1

    .line 1282
    :goto_1
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderStyle:I

    shr-int/lit8 v2, v2, 0xc

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    packed-switch v2, :pswitch_data_2

    .line 1301
    :goto_2
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderStyle:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    packed-switch v2, :pswitch_data_3

    .line 1320
    :goto_3
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderStyle:I

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    packed-switch v2, :pswitch_data_4

    .line 1339
    :goto_4
    iget v2, v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->nBorderStyle:I

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    packed-switch v2, :pswitch_data_5

    .line 1358
    :goto_5
    return-object v1

    .line 1246
    :pswitch_0
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1247
    :pswitch_1
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1248
    :pswitch_2
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1249
    :pswitch_3
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1250
    :pswitch_4
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1251
    :pswitch_5
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1252
    :pswitch_6
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1253
    :pswitch_7
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1254
    :pswitch_8
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1255
    :pswitch_9
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1256
    :pswitch_a
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1257
    :pswitch_b
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1258
    :pswitch_c
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1259
    :pswitch_d
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1260
    :pswitch_e
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1261
    :pswitch_f
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_0

    .line 1265
    :pswitch_10
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_1

    .line 1266
    :pswitch_11
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_1

    .line 1267
    :pswitch_12
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1268
    :pswitch_13
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1269
    :pswitch_14
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1270
    :pswitch_15
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1271
    :pswitch_16
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1272
    :pswitch_17
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1273
    :pswitch_18
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1274
    :pswitch_19
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1275
    :pswitch_1a
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1276
    :pswitch_1b
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1277
    :pswitch_1c
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1278
    :pswitch_1d
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1279
    :pswitch_1e
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1280
    :pswitch_1f
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1284
    :pswitch_20
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1285
    :pswitch_21
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1286
    :pswitch_22
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1287
    :pswitch_23
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1288
    :pswitch_24
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1289
    :pswitch_25
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1290
    :pswitch_26
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1291
    :pswitch_27
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1292
    :pswitch_28
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1293
    :pswitch_29
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1294
    :pswitch_2a
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1295
    :pswitch_2b
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1296
    :pswitch_2c
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1297
    :pswitch_2d
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1298
    :pswitch_2e
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1299
    :pswitch_2f
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1303
    :pswitch_30
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1304
    :pswitch_31
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1305
    :pswitch_32
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1306
    :pswitch_33
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1307
    :pswitch_34
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1308
    :pswitch_35
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1309
    :pswitch_36
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1310
    :pswitch_37
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1311
    :pswitch_38
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1312
    :pswitch_39
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1313
    :pswitch_3a
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1314
    :pswitch_3b
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1315
    :pswitch_3c
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1316
    :pswitch_3d
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1317
    :pswitch_3e
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1318
    :pswitch_3f
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1322
    :pswitch_40
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1323
    :pswitch_41
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1324
    :pswitch_42
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1325
    :pswitch_43
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1326
    :pswitch_44
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1327
    :pswitch_45
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1328
    :pswitch_46
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1329
    :pswitch_47
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1330
    :pswitch_48
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1331
    :pswitch_49
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1332
    :pswitch_4a
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1333
    :pswitch_4b
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1334
    :pswitch_4c
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1335
    :pswitch_4d
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1336
    :pswitch_4e
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1337
    :pswitch_4f
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1341
    :pswitch_50
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1342
    :pswitch_51
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1343
    :pswitch_52
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1344
    :pswitch_53
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1345
    :pswitch_54
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1346
    :pswitch_55
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1347
    :pswitch_56
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1348
    :pswitch_57
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1349
    :pswitch_58
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1350
    :pswitch_59
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1351
    :pswitch_5a
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1352
    :pswitch_5b
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1353
    :pswitch_5c
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1354
    :pswitch_5d
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1355
    :pswitch_5e
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1356
    :pswitch_5f
    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 1263
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 1282
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
    .end packed-switch

    .line 1301
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
    .end packed-switch

    .line 1320
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
    .end packed-switch

    .line 1339
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
    .end packed-switch
.end method

.method public getFillBorderStylesForSheet()Lcom/infraware/common/UserClasses$FillBorderInfo;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1068
    sget-object v3, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    move-result-object v2

    .line 1069
    .local v2, sheetCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;
    sget-object v3, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    .line 1070
    .local v1, oSheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oUserClasses:Lcom/infraware/common/UserClasses;

    invoke-virtual {v3}, Lcom/infraware/common/UserClasses;->getFillBorderInfo()Lcom/infraware/common/UserClasses$FillBorderInfo;

    move-result-object v0

    .line 1071
    .local v0, oInfo:Lcom/infraware/common/UserClasses$FillBorderInfo;
    invoke-virtual {v0}, Lcom/infraware/common/UserClasses$FillBorderInfo;->clear()V

    .line 1074
    iput-boolean v4, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->isExistHorizontalBorder:Z

    .line 1075
    iput-boolean v4, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->isExistVerticalBorder:Z

    .line 1077
    iget-object v3, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    iget-object v4, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v4, v4, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 1078
    iget-object v3, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    iget-object v4, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v4, v4, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 1079
    :cond_0
    iget-object v3, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    iget-object v4, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v4, v4, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    if-ne v3, v4, :cond_3

    .line 1080
    iget-object v3, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    iget-object v4, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v4, v4, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    if-ne v3, v4, :cond_3

    .line 1081
    iget-object v3, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    iget-object v4, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v4, v4, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    if-ne v3, v4, :cond_3

    .line 1082
    iget-object v3, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    iget-object v4, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v4, v4, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    if-ne v3, v4, :cond_3

    .line 1084
    :cond_1
    iput-boolean v5, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->isExistHorizontalBorder:Z

    .line 1085
    iput-boolean v5, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->isExistVerticalBorder:Z

    .line 1099
    :cond_2
    :goto_0
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwFillColor:I

    iput v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nFillColor:I

    .line 1100
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderLeftColor:I

    iput v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nLColor:I

    .line 1101
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderTopColor:I

    iput v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nTColor:I

    .line 1102
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderRightColor:I

    iput v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nRColor:I

    .line 1103
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderBottomColor:I

    iput v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nBColor:I

    .line 1104
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderHorizontalColor:I

    iput v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nHColor:I

    .line 1105
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderVerticalColor:I

    iput v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nVColor:I

    .line 1107
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    shr-int/lit8 v3, v3, 0x14

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    packed-switch v3, :pswitch_data_0

    .line 1126
    :goto_1
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    packed-switch v3, :pswitch_data_1

    .line 1145
    :goto_2
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    shr-int/lit8 v3, v3, 0xc

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    packed-switch v3, :pswitch_data_2

    .line 1164
    :goto_3
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    packed-switch v3, :pswitch_data_3

    .line 1183
    :goto_4
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    packed-switch v3, :pswitch_data_4

    .line 1202
    :goto_5
    iget v3, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    packed-switch v3, :pswitch_data_5

    .line 1222
    :goto_6
    return-object v0

    .line 1088
    :cond_3
    iget-object v3, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    iget-object v4, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v4, v4, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v3, v4

    if-nez v3, :cond_4

    .line 1089
    iget-object v3, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    iget-object v4, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    iget v4, v4, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v3, v4

    if-nez v3, :cond_4

    .line 1091
    iput-boolean v5, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->isExistHorizontalBorder:Z

    goto :goto_0

    .line 1093
    :cond_4
    iget-object v3, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    iget-object v4, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v4, v4, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 1094
    iget-object v3, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    iget v3, v3, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    iget-object v4, v2, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    iget v4, v4, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 1096
    iput-boolean v5, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->isExistVerticalBorder:Z

    goto/16 :goto_0

    .line 1109
    :pswitch_0
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_1

    .line 1110
    :pswitch_1
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_1

    .line 1111
    :pswitch_2
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_1

    .line 1112
    :pswitch_3
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_1

    .line 1113
    :pswitch_4
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto :goto_1

    .line 1114
    :pswitch_5
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1115
    :pswitch_6
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1116
    :pswitch_7
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1117
    :pswitch_8
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1118
    :pswitch_9
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1119
    :pswitch_a
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1120
    :pswitch_b
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1121
    :pswitch_c
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1122
    :pswitch_d
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1123
    :pswitch_e
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1124
    :pswitch_f
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_1

    .line 1128
    :pswitch_10
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1129
    :pswitch_11
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1130
    :pswitch_12
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1131
    :pswitch_13
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1132
    :pswitch_14
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1133
    :pswitch_15
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1134
    :pswitch_16
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1135
    :pswitch_17
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1136
    :pswitch_18
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1137
    :pswitch_19
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1138
    :pswitch_1a
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1139
    :pswitch_1b
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1140
    :pswitch_1c
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1141
    :pswitch_1d
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1142
    :pswitch_1e
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1143
    :pswitch_1f
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_2

    .line 1147
    :pswitch_20
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1148
    :pswitch_21
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1149
    :pswitch_22
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1150
    :pswitch_23
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1151
    :pswitch_24
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1152
    :pswitch_25
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1153
    :pswitch_26
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1154
    :pswitch_27
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1155
    :pswitch_28
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1156
    :pswitch_29
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1157
    :pswitch_2a
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1158
    :pswitch_2b
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1159
    :pswitch_2c
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1160
    :pswitch_2d
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1161
    :pswitch_2e
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1162
    :pswitch_2f
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_3

    .line 1166
    :pswitch_30
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1167
    :pswitch_31
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1168
    :pswitch_32
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1169
    :pswitch_33
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1170
    :pswitch_34
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1171
    :pswitch_35
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1172
    :pswitch_36
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1173
    :pswitch_37
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1174
    :pswitch_38
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1175
    :pswitch_39
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1176
    :pswitch_3a
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1177
    :pswitch_3b
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1178
    :pswitch_3c
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1179
    :pswitch_3d
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1180
    :pswitch_3e
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1181
    :pswitch_3f
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_4

    .line 1185
    :pswitch_40
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1186
    :pswitch_41
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1187
    :pswitch_42
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1188
    :pswitch_43
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1189
    :pswitch_44
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1190
    :pswitch_45
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1191
    :pswitch_46
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1192
    :pswitch_47
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1193
    :pswitch_48
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1194
    :pswitch_49
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1195
    :pswitch_4a
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1196
    :pswitch_4b
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1197
    :pswitch_4c
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1198
    :pswitch_4d
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1199
    :pswitch_4e
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1200
    :pswitch_4f
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_5

    .line 1204
    :pswitch_50
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1205
    :pswitch_51
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1206
    :pswitch_52
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUM:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1207
    :pswitch_53
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1208
    :pswitch_54
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOTTED:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1209
    :pswitch_55
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THICK:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1210
    :pswitch_56
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DOUBLE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1211
    :pswitch_57
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_HAIR:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1212
    :pswitch_58
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASH:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1213
    :pswitch_59
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1214
    :pswitch_5a
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1215
    :pswitch_5b
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_DASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1216
    :pswitch_5c
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_MEDIUMDASHDOTDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1217
    :pswitch_5d
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SLANTEDDASHDOT:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1218
    :pswitch_5e
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_COMPLEX:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1219
    :pswitch_5f
    sget-object v3, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_SOLID:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v3, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    goto/16 :goto_6

    .line 1107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 1126
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 1145
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
    .end packed-switch

    .line 1164
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
    .end packed-switch

    .line 1183
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
    .end packed-switch

    .line 1202
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
    .end packed-switch
.end method

.method public getFitToHeightRatio()I
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nFitToHeightZoomValue:I

    return v0
.end method

.method public getFitToWidthRatio()I
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nFitToWidthZoomValue:I

    return v0
.end method

.method public getFontFaceList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    iget-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 807
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    .line 813
    :cond_0
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetSystemFontNames()[Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, szEList:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_2

    .line 820
    iget-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 821
    iget-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    .line 823
    .end local v1           #szEList:[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 808
    :cond_1
    iget-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 809
    iget-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    goto :goto_1

    .line 814
    .restart local v1       #szEList:[Ljava/lang/String;
    :cond_2
    aget-object v0, v1, v3

    .line 816
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 817
    iget-object v4, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 823
    .end local v0           #str:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getFontInfo()Lcom/infraware/common/UserClasses$FontInfo;
    .locals 7

    .prologue
    .line 486
    iget-object v5, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oUserClasses:Lcom/infraware/common/UserClasses;

    invoke-virtual {v5}, Lcom/infraware/common/UserClasses;->getFontInfo()Lcom/infraware/common/UserClasses$FontInfo;

    move-result-object v4

    .line 487
    .local v4, oFont:Lcom/infraware/common/UserClasses$FontInfo;
    iget v5, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v6, 0x14

    if-ne v5, v6, :cond_6

    .line 489
    :cond_0
    sget-object v5, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v5}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    .line 490
    .local v1, formatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    sget-object v5, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v5}, Lcom/infraware/evengine/ICoEngineInterface;->IGetUseFontCount()I

    move-result v2

    .line 491
    .local v2, nCount:I
    if-lez v2, :cond_1

    iget-object v5, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->szFontName:Ljava/lang/String;

    iput-object v5, v4, Lcom/infraware/common/UserClasses$FontInfo;->szFontFace:Ljava/lang/String;

    .line 493
    :cond_1
    iget v5, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->nFontSize:I

    iput v5, v4, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    .line 494
    iget v5, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwFontColor:I

    iput v5, v4, Lcom/infraware/common/UserClasses$FontInfo;->nFontColor:I

    .line 495
    const/4 v3, 0x0

    .line 496
    .local v3, nMask:I
    iget v5, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bBold:I

    if-lez v5, :cond_2

    or-int/lit8 v3, v3, 0x20

    .line 497
    :cond_2
    iget v5, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bItalic:I

    if-lez v5, :cond_3

    or-int/lit8 v3, v3, 0x40

    .line 498
    :cond_3
    iget v5, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bUnderLine:I

    if-lez v5, :cond_4

    or-int/lit16 v3, v3, 0x80

    .line 499
    :cond_4
    iget v5, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bStrikeout:I

    if-lez v5, :cond_5

    or-int/lit16 v3, v3, 0x100

    .line 500
    :cond_5
    iput v3, v4, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    .line 524
    .end local v1           #formatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    .end local v2           #nCount:I
    :goto_0
    return-object v4

    .line 504
    .end local v3           #nMask:I
    :cond_6
    sget-object v5, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v5}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v0

    .line 506
    .local v0, AttInfo:Lcom/infraware/evengine/EV$FONT_INFO;
    iget-object v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->szFontName:Ljava/lang/String;

    iput-object v5, v4, Lcom/infraware/common/UserClasses$FontInfo;->szFontFace:Ljava/lang/String;

    .line 507
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nFSize:I

    iput v5, v4, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    .line 508
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nFColor:I

    iput v5, v4, Lcom/infraware/common/UserClasses$FontInfo;->nFontColor:I

    .line 509
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nBColor:I

    iput v5, v4, Lcom/infraware/common/UserClasses$FontInfo;->nBGColor:I

    .line 511
    const/4 v3, 0x0

    .line 512
    .restart local v3       #nMask:I
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v5, v5, 0x400

    const/16 v6, 0x400

    if-ne v5, v6, :cond_7

    or-int/lit8 v3, v3, 0x20

    .line 513
    :cond_7
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v5, v5, 0x200

    const/16 v6, 0x200

    if-ne v5, v6, :cond_8

    or-int/lit8 v3, v3, 0x40

    .line 514
    :cond_8
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v5, v5, 0x100

    const/16 v6, 0x100

    if-ne v5, v6, :cond_9

    or-int/lit16 v3, v3, 0x80

    .line 515
    :cond_9
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v5, v5, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_a

    or-int/lit16 v3, v3, 0x100

    .line 516
    :cond_a
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit8 v5, v5, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_b

    or-int/lit16 v3, v3, 0x200

    .line 517
    :cond_b
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_c

    const/high16 v5, 0x1

    or-int/2addr v3, v5

    .line 518
    :cond_c
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_d

    const/high16 v5, 0x2

    or-int/2addr v3, v5

    .line 519
    :cond_d
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    or-int/lit16 v3, v3, 0x2000

    .line 520
    :cond_e
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    or-int/lit16 v3, v3, 0x1000

    .line 521
    :cond_f
    iput v3, v4, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    .line 522
    iget v5, v0, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    iput v5, v4, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto :goto_0
.end method

.method public getFormatCurrencyInfo()Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;
    .locals 4

    .prologue
    .line 2394
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    .line 2395
    .local v1, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oUserClasses:Lcom/infraware/common/UserClasses;

    invoke-virtual {v2}, Lcom/infraware/common/UserClasses;->getCellFormatCurrencyInfo()Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;

    move-result-object v0

    .line 2396
    .local v0, oCurrencyInfo:Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;
    invoke-virtual {v0}, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->clear()V

    .line 2398
    iget v2, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 2422
    :goto_0
    return-object v0

    .line 2401
    :cond_0
    iget v2, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iput v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_nPointerIndex:I

    .line 2402
    iget v2, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    packed-switch v2, :pswitch_data_0

    .line 2413
    :goto_1
    iget v2, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 2415
    :pswitch_0
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_BRACKETS_RED:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    goto :goto_0

    .line 2404
    :pswitch_1
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_NONE:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eCurrency:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    goto :goto_1

    .line 2405
    :pswitch_2
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_KRW:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eCurrency:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    goto :goto_1

    .line 2406
    :pswitch_3
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_USD:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eCurrency:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    goto :goto_1

    .line 2407
    :pswitch_4
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_GBP:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eCurrency:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    goto :goto_1

    .line 2408
    :pswitch_5
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_EUR:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eCurrency:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    goto :goto_1

    .line 2409
    :pswitch_6
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_JPY:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eCurrency:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    goto :goto_1

    .line 2410
    :pswitch_7
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_CNY:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eCurrency:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    goto :goto_1

    .line 2411
    :pswitch_8
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->CURRENCY_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eCurrency:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    goto :goto_1

    .line 2416
    :pswitch_9
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_BRACKETS_BLACK:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    goto :goto_0

    .line 2417
    :pswitch_a
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_RED:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    goto :goto_0

    .line 2418
    :pswitch_b
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_SIGN_BLACK:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    goto :goto_0

    .line 2419
    :pswitch_c
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_SIGN_RED:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    goto :goto_0

    .line 2420
    :pswitch_d
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    goto :goto_0

    .line 2402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2413
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getFormatDateInfo()Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;
    .locals 5

    .prologue
    .line 2489
    sget-object v3, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v2

    .line 2490
    .local v2, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    .line 2492
    .local v0, eDateType:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;
    iget v3, v2, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    move-object v1, v0

    .line 2507
    .end local v0           #eDateType:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;
    .local v1, eDateType:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;
    :goto_0
    return-object v1

    .line 2495
    .end local v1           #eDateType:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;
    .restart local v0       #eDateType:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;
    :cond_0
    iget v3, v2, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 2507
    .end local v0           #eDateType:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;
    .restart local v1       #eDateType:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;
    goto :goto_0

    .line 2497
    .end local v1           #eDateType:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;
    .restart local v0       #eDateType:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;
    :pswitch_0
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_1:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    goto :goto_1

    .line 2498
    :pswitch_1
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_2:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    goto :goto_1

    .line 2499
    :pswitch_2
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_3:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    goto :goto_1

    .line 2500
    :pswitch_3
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_4:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    goto :goto_1

    .line 2501
    :pswitch_4
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_5:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    goto :goto_1

    .line 2502
    :pswitch_5
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_6:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    goto :goto_1

    .line 2503
    :pswitch_6
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_7:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    goto :goto_1

    .line 2504
    :pswitch_7
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_8:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    goto :goto_1

    .line 2505
    :pswitch_8
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->DATETYPE_DATE_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;

    goto :goto_1

    .line 2495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getFormatFractionInfo()Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;
    .locals 5

    .prologue
    .line 2553
    sget-object v3, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v2

    .line 2554
    .local v2, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    .line 2556
    .local v0, eFractionType:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;
    iget v3, v2, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    move-object v1, v0

    .line 2572
    .end local v0           #eFractionType:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;
    .local v1, eFractionType:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;
    :goto_0
    return-object v1

    .line 2559
    .end local v1           #eFractionType:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;
    .restart local v0       #eFractionType:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;
    :cond_0
    iget v3, v2, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 2572
    .end local v0           #eFractionType:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;
    .restart local v1       #eFractionType:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;
    goto :goto_0

    .line 2561
    .end local v1           #eFractionType:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;
    .restart local v0       #eFractionType:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;
    :pswitch_0
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_UPTO_1_DIGIT:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    goto :goto_1

    .line 2562
    :pswitch_1
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_UPTO_2_DIGIT:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    goto :goto_1

    .line 2563
    :pswitch_2
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_UPTO_3_DIGIT:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    goto :goto_1

    .line 2564
    :pswitch_3
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_BY_2:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    goto :goto_1

    .line 2565
    :pswitch_4
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_BY_4:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    goto :goto_1

    .line 2566
    :pswitch_5
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_BY_8:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    goto :goto_1

    .line 2567
    :pswitch_6
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_BY_16:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    goto :goto_1

    .line 2568
    :pswitch_7
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_BY_10:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    goto :goto_1

    .line 2569
    :pswitch_8
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_BY_100:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    goto :goto_1

    .line 2570
    :pswitch_9
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->FRACTION_TYPE_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;

    goto :goto_1

    .line 2559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getFormatNumberInfo()Lcom/infraware/common/UserClasses$CellFormatNumberInfo;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2331
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    .line 2332
    .local v1, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oUserClasses:Lcom/infraware/common/UserClasses;

    invoke-virtual {v2}, Lcom/infraware/common/UserClasses;->getCellFormatNumberInfo()Lcom/infraware/common/UserClasses$CellFormatNumberInfo;

    move-result-object v0

    .line 2333
    .local v0, oNumberInfo:Lcom/infraware/common/UserClasses$CellFormatNumberInfo;
    invoke-virtual {v0}, Lcom/infraware/common/UserClasses$CellFormatNumberInfo;->clear()V

    .line 2335
    iget v2, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    if-eq v2, v3, :cond_0

    .line 2349
    :goto_0
    return-object v0

    .line 2338
    :cond_0
    iget v2, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/infraware/common/UserClasses$CellFormatNumberInfo;->m_bDelimiter:Z

    .line 2339
    iget v2, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    packed-switch v2, :pswitch_data_0

    .line 2348
    :goto_2
    iget v2, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iput v2, v0, Lcom/infraware/common/UserClasses$CellFormatNumberInfo;->m_nPointerIndex:I

    goto :goto_0

    .line 2338
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 2341
    :pswitch_0
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_BRACKETS_RED:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatNumberInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    goto :goto_2

    .line 2342
    :pswitch_1
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_BRACKETS_BLACK:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatNumberInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    goto :goto_2

    .line 2343
    :pswitch_2
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_RED:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatNumberInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    goto :goto_2

    .line 2344
    :pswitch_3
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_SIGN_BLACK:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatNumberInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    goto :goto_2

    .line 2345
    :pswitch_4
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_SIGN_RED:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatNumberInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    goto :goto_2

    .line 2346
    :pswitch_5
    sget-object v2, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->NEGATIVE_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$CellFormatNumberInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    goto :goto_2

    .line 2339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getFormatPercentageInfo()I
    .locals 3

    .prologue
    .line 2679
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    .line 2681
    .local v0, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 2682
    const/4 v1, 0x0

    .line 2684
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    goto :goto_0
.end method

.method public getFormatScientificInfo()I
    .locals 3

    .prologue
    .line 2698
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    .line 2700
    .local v0, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 2701
    const/4 v1, 0x0

    .line 2703
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    goto :goto_0
.end method

.method public getFormatTimeInfo()Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
    .locals 5

    .prologue
    .line 2622
    sget-object v3, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v2

    .line 2623
    .local v2, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    .line 2625
    .local v0, eTimeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
    iget v3, v2, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    move-object v1, v0

    .line 2636
    .end local v0           #eTimeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
    .local v1, eTimeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
    :goto_0
    return-object v1

    .line 2628
    .end local v1           #eTimeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
    .restart local v0       #eTimeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
    :cond_0
    iget v3, v2, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 2636
    .end local v0           #eTimeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
    .restart local v1       #eTimeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
    goto :goto_0

    .line 2630
    .end local v1           #eTimeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
    .restart local v0       #eTimeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;
    :pswitch_0
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_1:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    goto :goto_1

    .line 2631
    :pswitch_1
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_2:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    goto :goto_1

    .line 2632
    :pswitch_2
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_3:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    goto :goto_1

    .line 2633
    :pswitch_3
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_4:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    goto :goto_1

    .line 2634
    :pswitch_4
    sget-object v0, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->TIME_TYPE_TIME_COMBINED:Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;

    goto :goto_1

    .line 2628
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getGrapAttrInfo_Editor()Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;
    .locals 1

    .prologue
    .line 2039
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetBWPGrapAttrInfo_Editor()Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v0

    return-object v0
.end method

.method public getHyperTextInfo(II)Lcom/infraware/common/UserClasses$HyperTextInfo;
    .locals 3
    .parameter "a_nPosX"
    .parameter "a_nPosY"

    .prologue
    .line 408
    iget-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oUserClasses:Lcom/infraware/common/UserClasses;

    invoke-virtual {v2}, Lcom/infraware/common/UserClasses;->getHyperTextInfo()Lcom/infraware/common/UserClasses$HyperTextInfo;

    move-result-object v1

    .line 409
    .local v1, oInfo:Lcom/infraware/common/UserClasses$HyperTextInfo;
    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$HyperTextInfo;->clear()V

    .line 411
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2, p1, p2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetHyperLinkInfoEx(II)Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    .line 412
    .local v0, oEInfo:Lcom/infraware/evengine/EV$HYPERLINK_INFO;
    iget-object v2, v0, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->szHyperText:Ljava/lang/String;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$HyperTextInfo;->szName:Ljava/lang/String;

    .line 413
    iget-object v2, v0, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->szHyperLink:Ljava/lang/String;

    iput-object v2, v1, Lcom/infraware/common/UserClasses$HyperTextInfo;->szUrl:Ljava/lang/String;

    .line 414
    return-object v1
.end method

.method public getKeyDatas(Lcom/infraware/common/UxDocViewerBase;Z)Ljava/util/ArrayList;
    .locals 13
    .parameter "a_oActivity"
    .parameter "a_bSortByRows"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/infraware/common/UxDocViewerBase;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1809
    iput-boolean p2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bSortByRows:Z

    .line 1810
    const/4 v4, 0x0

    .local v4, nStart:I
    const/4 v2, 0x0

    .local v2, nEnd:I
    const/4 v1, 0x0

    .line 1811
    .local v1, nCount:I
    sget-object v10, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v10}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/evengine/EV;->getRange()Lcom/infraware/evengine/EV$RANGE;

    move-result-object v5

    .line 1812
    .local v5, oRange:Lcom/infraware/evengine/EV$RANGE;
    sget-object v10, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11}, Lcom/infraware/evengine/ICoEngineInterface;->IGetSortRange(Lcom/infraware/evengine/EV$RANGE;I)I

    .line 1814
    iget-boolean v10, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bSortByRows:Z

    if-nez v10, :cond_0

    .line 1815
    iget v10, v5, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    iget v11, v5, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v10, v11

    add-int/lit8 v1, v10, 0x1

    .line 1816
    iget v4, v5, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    .line 1817
    iget v2, v5, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    .line 1824
    :goto_0
    if-lez v1, :cond_5

    .line 1827
    iget-object v10, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    .line 1829
    :goto_1
    const/4 v0, 0x0

    .line 1830
    .local v0, data:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1831
    .local v6, strX:C
    const/4 v7, 0x0

    .line 1832
    .local v7, strY:C
    iget-object v10, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a02da

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1833
    move v3, v4

    .local v3, nItem:I
    :goto_2
    if-le v3, v2, :cond_2

    .line 1856
    .end local v0           #data:Ljava/lang/String;
    .end local v3           #nItem:I
    .end local v6           #strX:C
    .end local v7           #strY:C
    :goto_3
    iget-object v10, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    return-object v10

    .line 1820
    :cond_0
    iget v10, v5, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    iget v11, v5, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v10, v11

    add-int/lit8 v1, v10, 0x1

    .line 1821
    iget v10, v5, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    add-int/lit8 v4, v10, 0x1

    .line 1822
    iget v10, v5, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    add-int/lit8 v2, v10, 0x1

    goto :goto_0

    .line 1828
    :cond_1
    iget-object v10, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1835
    .restart local v0       #data:Ljava/lang/String;
    .restart local v3       #nItem:I
    .restart local v6       #strX:C
    .restart local v7       #strY:C
    :cond_2
    iget-boolean v10, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bSortByRows:Z

    if-nez v10, :cond_4

    .line 1837
    invoke-virtual {p1}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a02db

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1839
    div-int/lit8 v8, v3, 0x1a

    .line 1840
    .local v8, x:I
    rem-int/lit8 v9, v3, 0x1a

    .line 1841
    .local v9, y:I
    if-lez v8, :cond_3

    .line 1842
    add-int/lit8 v10, v8, 0x41

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    int-to-char v6, v10

    .line 1843
    :cond_3
    add-int/lit8 v10, v9, 0x41

    int-to-char v7, v10

    .line 1844
    iget-object v10, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1833
    .end local v8           #x:I
    .end local v9           #y:I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1848
    :cond_4
    invoke-virtual {p1}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a02db

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1849
    iget-object v10, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1854
    .end local v0           #data:Ljava/lang/String;
    .end local v3           #nItem:I
    .end local v6           #strX:C
    .end local v7           #strY:C
    :cond_5
    iget-object v10, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a02da

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method public getMaxZoomRatio()I
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    return v0
.end method

.method public getMinZoomRatio()I
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nMinZoom:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 2864
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nTotalPages:I

    return v0
.end method

.method public getParagraphInfo()Lcom/infraware/common/UserClasses$ParagraphInfo;
    .locals 3

    .prologue
    .line 828
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v1

    .line 829
    .local v1, paraInfo:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    iget-object v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oUserClasses:Lcom/infraware/common/UserClasses;

    invoke-virtual {v2}, Lcom/infraware/common/UserClasses;->getParagraphInfo()Lcom/infraware/common/UserClasses$ParagraphInfo;

    move-result-object v0

    .line 830
    .local v0, oInfo:Lcom/infraware/common/UserClasses$ParagraphInfo;
    iget v2, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    packed-switch v2, :pswitch_data_0

    .line 837
    :goto_0
    iget v2, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    packed-switch v2, :pswitch_data_1

    .line 844
    :goto_1
    iget v2, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    iput v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->nLeftIndent:I

    .line 845
    iget v2, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nRightMarginValue:I

    iput v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->nRightIndent:I

    .line 846
    iget v2, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineValue:I

    iput v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->nFirstLineIndent:I

    .line 847
    iget v2, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpaceValue:I

    iput v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->nLineSpace:I

    .line 848
    iget v2, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaTopValue:I

    iput v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->nBeforeParagraph:I

    .line 849
    iget v2, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaBottomValue:I

    iput v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->nAfterParagraph:I

    .line 850
    return-object v0

    .line 832
    :pswitch_0
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_LEFT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->eHAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    goto :goto_0

    .line 833
    :pswitch_1
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_CENTER:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->eHAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    goto :goto_0

    .line 834
    :pswitch_2
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_RIGHT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->eHAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    goto :goto_0

    .line 835
    :pswitch_3
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_JUSTIFY:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->eHAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    goto :goto_0

    .line 839
    :pswitch_4
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_TOP:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->eVAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    goto :goto_1

    .line 840
    :pswitch_5
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_MIDDLE:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->eVAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    goto :goto_1

    .line 841
    :pswitch_6
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_BOTTOM:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    iput-object v2, v0, Lcom/infraware/common/UserClasses$ParagraphInfo;->eVAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    goto :goto_1

    .line 830
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 837
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getProtectStatus()I
    .locals 1

    .prologue
    .line 3102
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetProtectStatus_Editor()I

    move-result v0

    return v0
.end method

.method public getSelectedSeparateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3071
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetSeparateMarkString_Editor()Ljava/lang/String;

    move-result-object v0

    .line 3073
    .local v0, szStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3074
    :cond_0
    const-string v0, ""

    .line 3076
    :cond_1
    return-object v0
.end method

.method public getSelectedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3061
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetMarkString()Ljava/lang/String;

    move-result-object v0

    .line 3062
    .local v0, szStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3063
    :cond_0
    const-string v0, ""

    .line 3065
    :cond_1
    return-object v0
.end method

.method public getSheetAlignmentInfo()[Lcom/infraware/common/UserClasses$ALIGN_MODE;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2225
    const/4 v2, 0x2

    new-array v0, v2, [Lcom/infraware/common/UserClasses$ALIGN_MODE;

    .line 2226
    .local v0, aeMode:[Lcom/infraware/common/UserClasses$ALIGN_MODE;
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    .line 2227
    .local v1, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget v2, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wHorizontalAlignment:I

    packed-switch v2, :pswitch_data_0

    .line 2232
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_NONE:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    aput-object v2, v0, v3

    .line 2234
    :goto_0
    iget v2, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wVerticalAlignment:I

    packed-switch v2, :pswitch_data_1

    .line 2239
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_NONE:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    aput-object v2, v0, v4

    .line 2241
    :goto_1
    return-object v0

    .line 2229
    :pswitch_0
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_LEFT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    aput-object v2, v0, v3

    goto :goto_0

    .line 2230
    :pswitch_1
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_CENTER:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    aput-object v2, v0, v3

    goto :goto_0

    .line 2231
    :pswitch_2
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_RIGHT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    aput-object v2, v0, v3

    goto :goto_0

    .line 2236
    :pswitch_3
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_TOP:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    aput-object v2, v0, v4

    goto :goto_1

    .line 2237
    :pswitch_4
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_MIDDLE:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    aput-object v2, v0, v4

    goto :goto_1

    .line 2238
    :pswitch_5
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_BOTTOM:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    aput-object v2, v0, v4

    goto :goto_1

    .line 2227
    :pswitch_data_0
    .packed-switch 0x109
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2234
    :pswitch_data_1
    .packed-switch 0x10d
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getSheetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;
    .locals 1

    .prologue
    .line 2989
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    move-result-object v0

    return-object v0
.end method

.method public getSheetColWidth()I
    .locals 2

    .prologue
    .line 2259
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    move-result-object v0

    .line 2260
    .local v0, oInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->wColWidth:I

    return v1
.end method

.method public getSheetDetailInfo(Lcom/infraware/evengine/EV$SHEET_INFO;)V
    .locals 3
    .parameter "a_pSheetInfo"

    .prologue
    .line 2998
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getSheetInfo()Lcom/infraware/evengine/EV$SHEET_INFO;

    move-result-object v0

    .line 2999
    .local v0, oInfo:Lcom/infraware/evengine/EV$SHEET_INFO;
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCurrentSheetIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetSheetInfo(Lcom/infraware/evengine/EV$SHEET_INFO;I)V

    .line 3000
    move-object p1, v0

    .line 3001
    return-void
.end method

.method public getSheetEditStauts()J
    .locals 2

    .prologue
    .line 2985
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetEditStauts_Editor()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSheetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    .locals 1

    .prologue
    .line 2993
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    return-object v0
.end method

.method public getSheetInfo()Lcom/infraware/common/UserClasses$SheetNameIndexInfo;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2168
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oUserClasses:Lcom/infraware/common/UserClasses;

    invoke-virtual {v3}, Lcom/infraware/common/UserClasses;->getSheetNameIndexInfo()Lcom/infraware/common/UserClasses$SheetNameIndexInfo;

    move-result-object v0

    .line 2169
    .local v0, oInfo:Lcom/infraware/common/UserClasses$SheetNameIndexInfo;
    invoke-virtual {v0}, Lcom/infraware/common/UserClasses$SheetNameIndexInfo;->clear()V

    .line 2171
    sget-object v3, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetSheetNameList()[Ljava/lang/String;

    move-result-object v2

    .line 2172
    .local v2, tmp:[Ljava/lang/String;
    array-length v3, v2

    move v4, v6

    :goto_0
    if-lt v4, v3, :cond_1

    .line 2175
    sget-object v3, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCurrentSheetIndex()I

    move-result v3

    iput v3, v0, Lcom/infraware/common/UserClasses$SheetNameIndexInfo;->nCurrentSheetIndex:I

    .line 2177
    iget v3, v0, Lcom/infraware/common/UserClasses$SheetNameIndexInfo;->nCurrentSheetIndex:I

    if-gez v3, :cond_0

    iput v6, v0, Lcom/infraware/common/UserClasses$SheetNameIndexInfo;->nCurrentSheetIndex:I

    .line 2178
    :cond_0
    iget-object v3, v0, Lcom/infraware/common/UserClasses$SheetNameIndexInfo;->szCurrentSheetName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v0, Lcom/infraware/common/UserClasses$SheetNameIndexInfo;->nCurrentSheetIndex:I

    if-le v3, v4, :cond_2

    .line 2179
    iget-object v3, v0, Lcom/infraware/common/UserClasses$SheetNameIndexInfo;->aszSheetNameList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/infraware/common/UserClasses$SheetNameIndexInfo;->nCurrentSheetIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/infraware/common/UserClasses$SheetNameIndexInfo;->szCurrentSheetName:Ljava/lang/String;

    .line 2182
    :goto_1
    return-object v0

    .line 2172
    .restart local p0
    :cond_1
    aget-object v1, v2, v4

    .line 2173
    .local v1, string:Ljava/lang/String;
    iget-object v5, v0, Lcom/infraware/common/UserClasses$SheetNameIndexInfo;->aszSheetNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2181
    .end local v1           #string:Ljava/lang/String;
    :cond_2
    const-string v3, ""

    iput-object v3, v0, Lcom/infraware/common/UserClasses$SheetNameIndexInfo;->szCurrentSheetName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getSheetRowHeight()I
    .locals 2

    .prologue
    .line 2246
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    move-result-object v0

    .line 2247
    .local v0, oInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->wRowHeight:I

    return v1
.end method

.method public getSlideNote(I)Ljava/lang/String;
    .locals 1
    .parameter "a_nPageIndex"

    .prologue
    .line 2941
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getPageCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 2942
    :cond_0
    const/4 v0, 0x0

    .line 2944
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetSlideNoteString_Editor(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumbNail(I)V
    .locals 6
    .parameter "a_nPageIndex"

    .prologue
    const/16 v3, 0x76

    const/16 v4, 0x53

    const/4 v2, 0x1

    .line 477
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v0, v0, Lcom/infraware/evengine/ICoEngineInterface;->mEditorMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 478
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 479
    :cond_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, v3, v4, p1}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideObjStartEx(III)V

    .line 482
    :goto_0
    return-void

    .line 481
    :cond_1
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->IThumbnail(IIIII)V

    goto :goto_0
.end method

.method public getViewMode()Lcom/infraware/common/UserClasses$VIEW_MODE;
    .locals 2

    .prologue
    .line 1900
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v0, v1, Lcom/infraware/evengine/ICoEngineInterface;->m_nViewMode:I

    .line 1901
    .local v0, nViewMode:I
    packed-switch v0, :pswitch_data_0

    .line 1909
    :pswitch_0
    sget-object v1, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_ORIGIN:Lcom/infraware/common/UserClasses$VIEW_MODE;

    :goto_0
    return-object v1

    .line 1903
    :pswitch_1
    sget-object v1, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    goto :goto_0

    .line 1904
    :pswitch_2
    sget-object v1, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_HEIGHT:Lcom/infraware/common/UserClasses$VIEW_MODE;

    goto :goto_0

    .line 1905
    :pswitch_3
    sget-object v1, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    goto :goto_0

    .line 1901
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getWordColumn()I
    .locals 1

    .prologue
    .line 3031
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetColumn()I

    move-result v0

    return v0
.end method

.method public getZoomViewMode()Lcom/infraware/common/UserClasses$VIEW_MODE;
    .locals 2

    .prologue
    .line 3086
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v0, v0, Lcom/infraware/evengine/ICoEngineInterface;->m_nViewMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3087
    sget-object v0, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    .line 3091
    :goto_0
    return-object v0

    .line 3088
    :cond_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v0, v0, Lcom/infraware/evengine/ICoEngineInterface;->m_nViewMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3089
    sget-object v0, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    goto :goto_0

    .line 3091
    :cond_1
    sget-object v0, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_ORIGIN:Lcom/infraware/common/UserClasses$VIEW_MODE;

    goto :goto_0
.end method

.method public increaseDecimalPoint()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2726
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v9

    .line 2727
    .local v9, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    if-eq v0, v10, :cond_0

    .line 2728
    iget v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2729
    iget v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2730
    iget v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 2732
    :cond_0
    iget v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1

    .line 2734
    iget v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    .line 2735
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    iget v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iget v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    iget v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    iget v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    iget v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    iget v7, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    iget v8, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFormat(IIIIIIII)V

    move v0, v10

    .line 2739
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public increaseIndent()V
    .locals 4

    .prologue
    .line 937
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v0

    .line 938
    .local v0, paraInfo:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    iget v1, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nRightMarginValue:I

    iget v3, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineValue:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->setParagraphIndent(III)V

    .line 939
    return-void
.end method

.method public increaseLineSpace()V
    .locals 4

    .prologue
    .line 962
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v0

    .line 963
    .local v0, paraInfo:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    iget v1, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpaceValue:I

    add-int/lit8 v1, v1, 0x19

    iget v2, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaTopValue:I

    iget v3, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaBottomValue:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->setLinespace(III)V

    .line 964
    return-void
.end method

.method public initializeEngine(II)V
    .locals 1
    .parameter "a_nDisplayWidth"
    .parameter "a_nDisplayHeight"

    .prologue
    .line 118
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/ICoEngineInterface;->IInitialize(II)V

    .line 119
    return-void
.end method

.method public insertBulletting(I)V
    .locals 2
    .parameter "a_nType"

    .prologue
    const/4 v1, 0x0

    .line 999
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, v1, p1, v1}, Lcom/infraware/evengine/ICoEngineInterface;->IBulletNumbering(III)V

    .line 1000
    return-void
.end method

.method public insertCell(Lcom/infraware/common/UserClasses$INSERT_MODE;)V
    .locals 3
    .parameter "a_eInsertmode"

    .prologue
    .line 1919
    const/4 v0, 0x0

    .line 1921
    .local v0, nCellType:I
    iget v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    .line 1923
    :cond_0
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$INSERT_MODE()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/infraware/common/UserClasses$INSERT_MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1928
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "CoCoreFunctionInterface - insertCell"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1925
    :pswitch_0
    const/4 v0, 0x0

    .line 1941
    :cond_1
    :goto_0
    const/4 v1, 0x4

    const/16 v2, -0x270f

    invoke-direct {p0, v1, v0, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->sendMessageToHandler(III)V

    .line 1942
    return-void

    .line 1926
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1934
    :cond_2
    sget-object v1, Lcom/infraware/common/UserClasses$INSERT_MODE;->INSERT_TOP:Lcom/infraware/common/UserClasses$INSERT_MODE;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 1935
    :cond_3
    sget-object v1, Lcom/infraware/common/UserClasses$INSERT_MODE;->INSERT_LEFT:Lcom/infraware/common/UserClasses$INSERT_MODE;

    if-ne p1, v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .line 1936
    :cond_4
    sget-object v1, Lcom/infraware/common/UserClasses$INSERT_MODE;->INSERT_RIGHT:Lcom/infraware/common/UserClasses$INSERT_MODE;

    if-ne p1, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 1937
    :cond_5
    sget-object v1, Lcom/infraware/common/UserClasses$INSERT_MODE;->INSERT_BOTTOM:Lcom/infraware/common/UserClasses$INSERT_MODE;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 1923
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insertChart(Lcom/infraware/common/UserClasses$CHART_TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/infraware/common/UserClasses$CHART_LEGEND;)V
    .locals 10
    .parameter "eType"
    .parameter "a_strTitle"
    .parameter "a_strXAxis"
    .parameter "a_strYAxis"
    .parameter "eLegend"

    .prologue
    .line 1043
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    move-result-object v9

    .line 1044
    .local v9, oCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;
    iget-object v2, v9, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    .line 1045
    .local v2, oRange:Lcom/infraware/evengine/EV$RANGE;
    const/4 v1, 0x0

    .line 1046
    .local v1, nChartType:I
    const/4 v7, 0x0

    .line 1047
    .local v7, nLegendPosition:I
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CHART_TYPE()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/infraware/common/UserClasses$CHART_TYPE;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 1053
    :goto_0
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CHART_LEGEND()[I

    move-result-object v0

    .line 1054
    invoke-virtual {p5}, Lcom/infraware/common/UserClasses$CHART_LEGEND;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    .line 1062
    :goto_1
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v3, 0x1

    .line 1063
    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1062
    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetInsertChart(ILcom/infraware/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1064
    return-void

    .line 1049
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1050
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1051
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 1052
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 1056
    :pswitch_4
    const/4 v7, 0x0

    goto :goto_1

    .line 1057
    :pswitch_5
    const/4 v7, 0x1

    goto :goto_1

    .line 1058
    :pswitch_6
    const/4 v7, 0x2

    goto :goto_1

    .line 1059
    :pswitch_7
    const/4 v7, 0x3

    goto :goto_1

    .line 1060
    :pswitch_8
    const/4 v7, 0x4

    goto :goto_1

    .line 1047
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1054
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public insertColumn(Z)V
    .locals 3
    .parameter "a_bAutoFit"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 2761
    if-eqz p1, :cond_0

    .line 2762
    const/4 v0, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/infraware/common/CoCoreFunctionInterface;->sendMessageToHandler(III)V

    .line 2765
    :goto_0
    return-void

    .line 2764
    :cond_0
    invoke-direct {p0, v2, v1, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->sendMessageToHandler(III)V

    goto :goto_0
.end method

.method public insertHyperText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "a_szText"
    .parameter "a_szURL"

    .prologue
    .line 402
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/ICoEngineInterface;->IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    return-void
.end method

.method public insertImage(Ljava/lang/String;Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "a_szFullPath"
    .parameter "a_oBitmap"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 1977
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/ICoEngineInterface;->IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 1979
    return-void
.end method

.method public insertNumberring(IZ)V
    .locals 3
    .parameter "a_nType"
    .parameter "a_bRestart"

    .prologue
    const/4 v2, 0x1

    .line 1004
    if-eqz p2, :cond_0

    move v0, v2

    .line 1005
    .local v0, nRestart:I
    :goto_0
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1, v2, p1, v0}, Lcom/infraware/evengine/ICoEngineInterface;->IBulletNumbering(III)V

    .line 1006
    return-void

    .line 1004
    .end local v0           #nRestart:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public insertRow(Z)V
    .locals 3
    .parameter "a_bAutoFit"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x1

    .line 2768
    if-eqz p1, :cond_0

    .line 2769
    invoke-direct {p0, v2, v1, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->sendMessageToHandler(III)V

    .line 2772
    :goto_0
    return-void

    .line 2771
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/infraware/common/CoCoreFunctionInterface;->sendMessageToHandler(III)V

    goto :goto_0
.end method

.method public insertShape(I)V
    .locals 1
    .parameter "a_nShapeNum"

    .prologue
    .line 2033
    if-ltz p1, :cond_0

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_0

    .line 2034
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->IInsertShape(I)V

    .line 2035
    :cond_0
    return-void
.end method

.method public insertSheet(Ljava/lang/String;Z)Lcom/infraware/common/UserClasses$SheetNameIndexInfo;
    .locals 7
    .parameter "a_strname"
    .parameter "a_bCopy"

    .prologue
    const/4 v1, 0x0

    .line 2212
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getPageCount()I

    move-result v3

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    move v6, v2

    :goto_0
    move-object v2, p1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetEdit(ILjava/lang/String;IIII)V

    .line 2214
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetInfo()Lcom/infraware/common/UserClasses$SheetNameIndexInfo;

    move-result-object v0

    return-object v0

    :cond_0
    move v6, v1

    .line 2212
    goto :goto_0
.end method

.method public insertSheetFunction(I)V
    .locals 1
    .parameter "a_nFunctionIndex"

    .prologue
    .line 1037
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 1038
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFunction(I)V

    .line 1039
    :cond_0
    return-void
.end method

.method public insertSlide(I)V
    .locals 3
    .parameter "a_nSlideType"

    .prologue
    .line 2878
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideAddMove(III)V

    .line 2879
    return-void
.end method

.method public insertTable(II)V
    .locals 1
    .parameter "a_nRowsCount"
    .parameter "a_nColsCount"

    .prologue
    .line 420
    if-gtz p1, :cond_0

    if-gtz p2, :cond_0

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/infraware/common/CoCoreFunctionInterface;->sendMessageToHandler(III)V

    goto :goto_0
.end method

.method public insertTextbox()V
    .locals 1

    .prologue
    .line 2092
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IInsertTextBox()V

    .line 2093
    return-void
.end method

.method public isBGLoadingEnd()Z
    .locals 1

    .prologue
    .line 3037
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->bBGLoad:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFreezeSheet()Z
    .locals 3

    .prologue
    .line 2823
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getSheetInfo()Lcom/infraware/evengine/EV$SHEET_INFO;

    move-result-object v0

    .line 2824
    .local v0, oInfo:Lcom/infraware/evengine/EV$SHEET_INFO;
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCurrentSheetIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetSheetInfo(Lcom/infraware/evengine/EV$SHEET_INFO;I)V

    .line 2825
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_INFO;->bFreeze:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2826
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 3054
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IDocumentModified_Editor()Z

    move-result v0

    return v0
.end method

.method public isProtectSheet()Z
    .locals 3

    .prologue
    .line 2810
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getSheetInfo()Lcom/infraware/evengine/EV$SHEET_INFO;

    move-result-object v0

    .line 2811
    .local v0, oInfo:Lcom/infraware/evengine/EV$SHEET_INFO;
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCurrentSheetIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetSheetInfo(Lcom/infraware/evengine/EV$SHEET_INFO;I)V

    .line 2812
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_INFO;->bProtectSheet:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2813
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isReflowTextMode()Z
    .locals 2

    .prologue
    .line 3042
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bEditMode:Z

    if-eqz v0, :cond_1

    .line 3043
    iget-boolean v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bReflowMode:Z

    .line 3049
    :goto_0
    return v0

    .line 3046
    :cond_1
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getConfigInfo()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nReflowState:I

    if-eqz v0, :cond_2

    .line 3047
    const/4 v0, 0x1

    goto :goto_0

    .line 3049
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSheetCellLineBreak()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2850
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    .line 2851
    .local v0, oFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bWrap:I

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 2852
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSheetColsHidden()Z
    .locals 3

    .prologue
    .line 2776
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    .line 2777
    .local v0, oInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 2778
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2779
    const/4 v1, 0x1

    .line 2781
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSheetRowsHidden()Z
    .locals 3

    .prologue
    .line 2793
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    .line 2794
    .local v0, oInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    .line 2795
    iget v1, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2796
    const/4 v1, 0x1

    .line 2798
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeCells()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1966
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 1967
    :cond_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetMerge()V

    .line 1970
    :goto_0
    return-void

    .line 1969
    :cond_1
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, v2, v2, v2}, Lcom/infraware/evengine/ICoEngineInterface;->ICellMergeSeparate(III)V

    goto :goto_0
.end method

.method public moveCaret(I)V
    .locals 1
    .parameter "a_nMode"

    .prologue
    .line 2146
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->ICaretMove(I)V

    .line 2147
    return-void
.end method

.method public movePage(II)V
    .locals 1
    .parameter "a_nType"
    .parameter "a_nPage"

    .prologue
    .line 2151
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/ICoEngineInterface;->IMovePage(II)V

    .line 2152
    return-void
.end method

.method public moveSheet(II)Lcom/infraware/common/UserClasses$SheetNameIndexInfo;
    .locals 7
    .parameter "a_nFromIndex"
    .parameter "a_nToIndex"

    .prologue
    .line 2219
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetEdit(ILjava/lang/String;IIII)V

    .line 2220
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetInfo()Lcom/infraware/common/UserClasses$SheetNameIndexInfo;

    move-result-object v0

    return-object v0
.end method

.method public moveSlide(II)V
    .locals 4
    .parameter "a_nFromIndex"
    .parameter "a_nToIndex"

    .prologue
    .line 2891
    if-ne p1, p2, :cond_0

    .line 2918
    :goto_0
    return-void

    .line 2893
    :cond_0
    invoke-virtual {p0, p1}, Lcom/infraware/common/CoCoreFunctionInterface;->setDisplayPage(I)V

    .line 2894
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x5

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideAddMove(III)V

    goto :goto_0
.end method

.method public moveSlide(Z)V
    .locals 4
    .parameter "a_bMoveNext"

    .prologue
    const/4 v3, 0x1

    .line 2883
    if-eqz p1, :cond_0

    .line 2884
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideAddMove(III)V

    .line 2887
    :goto_0
    return-void

    .line 2886
    :cond_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideAddMove(III)V

    goto :goto_0
.end method

.method public onToggleFontStyleBold()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 575
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getFontInfo()Lcom/infraware/common/UserClasses$FontInfo;

    move-result-object v11

    .line 577
    .local v11, oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v10

    .line 578
    .local v10, AttInfo:Lcom/infraware/evengine/EV$FONT_INFO;
    const/16 v3, 0x20

    .line 579
    .local v3, nMaskAtt:I
    iget v4, v10, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    .line 580
    .local v4, nAttInfo:I
    iget v0, v11, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    .line 581
    or-int/lit16 v4, v4, 0x400

    .line 587
    :cond_0
    :goto_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/evengine/ICoEngineInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIIIZ)V

    .line 588
    return-void

    .line 584
    :cond_1
    iget v0, v10, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    .line 585
    xor-int/lit16 v4, v4, 0x400

    goto :goto_0
.end method

.method public onToggleFontStyleItalic()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getFontInfo()Lcom/infraware/common/UserClasses$FontInfo;

    move-result-object v11

    .line 560
    .local v11, oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v10

    .line 561
    .local v10, AttInfo:Lcom/infraware/evengine/EV$FONT_INFO;
    const/16 v3, 0x40

    .line 562
    .local v3, nMaskAtt:I
    iget v4, v10, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    .line 563
    .local v4, nAttInfo:I
    iget v0, v11, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1

    .line 564
    or-int/lit16 v4, v4, 0x200

    .line 570
    :cond_0
    :goto_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/evengine/ICoEngineInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIIIZ)V

    .line 571
    return-void

    .line 567
    :cond_1
    iget v0, v10, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 568
    xor-int/lit16 v4, v4, 0x200

    goto :goto_0
.end method

.method public onToggleFontStyleUnderline()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getFontInfo()Lcom/infraware/common/UserClasses$FontInfo;

    move-result-object v11

    .line 543
    .local v11, oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v10

    .line 544
    .local v10, AttInfo:Lcom/infraware/evengine/EV$FONT_INFO;
    const/16 v3, 0x80

    .line 545
    .local v3, nMaskAtt:I
    iget v4, v10, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    .line 546
    .local v4, nAttInfo:I
    iget v0, v11, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    .line 547
    or-int/lit16 v4, v4, 0x100

    .line 553
    :cond_0
    :goto_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/evengine/ICoEngineInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIIIZ)V

    .line 554
    return-void

    .line 550
    :cond_1
    iget v0, v10, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 551
    xor-int/lit16 v4, v4, 0x100

    goto :goto_0
.end method

.method public onToggleSheetFontStyleBold()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 748
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getFontInfo()Lcom/infraware/common/UserClasses$FontInfo;

    move-result-object v10

    .line 750
    .local v10, oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v9

    .line 751
    .local v9, AttInfo:Lcom/infraware/evengine/EV$FONT_INFO;
    const/16 v3, 0x20

    .line 752
    .local v3, nMaskAtt:I
    iget v4, v9, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    .line 753
    .local v4, nAttInfo:I
    iget v0, v10, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    .line 754
    or-int/lit16 v4, v4, 0x400

    .line 760
    :cond_0
    :goto_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISetSheetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 761
    return-void

    .line 757
    :cond_1
    iget v0, v9, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    .line 758
    xor-int/lit16 v4, v4, 0x400

    goto :goto_0
.end method

.method public onToggleSheetFontStyleItalic()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 731
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getFontInfo()Lcom/infraware/common/UserClasses$FontInfo;

    move-result-object v10

    .line 733
    .local v10, oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v9

    .line 734
    .local v9, AttInfo:Lcom/infraware/evengine/EV$FONT_INFO;
    const/16 v3, 0x40

    .line 735
    .local v3, nMaskAtt:I
    iget v4, v9, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    .line 736
    .local v4, nAttInfo:I
    iget v0, v10, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1

    .line 737
    or-int/lit16 v4, v4, 0x200

    .line 743
    :cond_0
    :goto_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISetSheetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 744
    return-void

    .line 740
    :cond_1
    iget v0, v9, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 741
    xor-int/lit16 v4, v4, 0x200

    goto :goto_0
.end method

.method public onToggleSheetFontStyleUnderline()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 714
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getFontInfo()Lcom/infraware/common/UserClasses$FontInfo;

    move-result-object v10

    .line 716
    .local v10, oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v9

    .line 717
    .local v9, AttInfo:Lcom/infraware/evengine/EV$FONT_INFO;
    const/16 v3, 0x80

    .line 718
    .local v3, nMaskAtt:I
    iget v4, v9, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    .line 719
    .local v4, nAttInfo:I
    iget v0, v10, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    .line 720
    or-int/lit16 v4, v4, 0x100

    .line 726
    :cond_0
    :goto_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISetSheetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 727
    return-void

    .line 723
    :cond_1
    iget v0, v9, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 724
    xor-int/lit16 v4, v4, 0x100

    goto :goto_0
.end method

.method public paste()V
    .locals 6

    .prologue
    .line 2001
    const/4 v0, 0x0

    .line 2002
    .local v0, bNative:I
    iget v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    .line 2004
    :cond_0
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetEditStauts_Editor()J

    move-result-wide v2

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2005
    const/4 v0, 0x1

    .line 2013
    :cond_1
    :goto_0
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/infraware/evengine/ICoEngineInterface;->IEditDocument(IIILjava/lang/String;)V

    .line 2030
    return-void

    .line 2009
    :cond_2
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/evengine/EV$BWP_OP_INFO;

    move-result-object v1

    .line 2010
    .local v1, opInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->bPaste:I

    if-nez v2, :cond_1

    .line 2011
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reDo()V
    .locals 4

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1985
    return-void
.end method

.method public recalculate()V
    .locals 1

    .prologue
    .line 2835
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetRecalculate()V

    .line 2836
    return-void
.end method

.method public replaceText(Ljava/lang/String;ZZZLjava/lang/String;Lcom/infraware/common/UserClasses$REPLACE_MODE;)V
    .locals 8
    .parameter "a_szOri"
    .parameter "a_bMatchCase"
    .parameter "a_bMatchWhole"
    .parameter "a_bFindForward"
    .parameter "a_szDest"
    .parameter "a_oReplaceMode"

    .prologue
    .line 427
    const-string v0, "CoCoreFunctionInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orgText = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DstText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    const/4 v7, 0x0

    .line 431
    .local v7, nFlag:I
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    move v3, v0

    .line 432
    .local v3, nCase:I
    :goto_1
    if-eqz p3, :cond_8

    const/4 v0, 0x1

    move v2, v0

    .line 434
    .local v2, nWhole:I
    :goto_2
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 436
    :cond_2
    if-eqz p2, :cond_3

    .line 437
    or-int/lit8 v7, v7, 0x2

    .line 438
    :cond_3
    if-eqz p3, :cond_4

    .line 439
    or-int/lit8 v7, v7, 0x4

    .line 440
    :cond_4
    if-nez p4, :cond_5

    .line 441
    or-int/lit8 v7, v7, 0x8

    .line 444
    :cond_5
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$REPLACE_MODE()[I

    move-result-object v0

    invoke-virtual {p6}, Lcom/infraware/common/UserClasses$REPLACE_MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 447
    :pswitch_0
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_9

    .line 449
    :cond_6
    or-int/lit8 v7, v7, 0x1

    .line 450
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v7}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 431
    .end local v2           #nWhole:I
    .end local v3           #nCase:I
    :cond_7
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 432
    .restart local v3       #nCase:I
    :cond_8
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2

    .line 453
    .restart local v2       #nWhole:I
    :cond_9
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/ICoEngineInterface;->ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V

    goto :goto_0

    .line 456
    :pswitch_1
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_b

    .line 458
    :cond_a
    or-int/lit8 v7, v7, 0x20

    .line 459
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1, p5, v7}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 462
    :cond_b
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/ICoEngineInterface;->ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V

    goto :goto_0

    .line 465
    :pswitch_2
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_d

    .line 467
    :cond_c
    or-int/lit8 v7, v7, 0x10

    .line 468
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1, p5, v7}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 471
    :cond_d
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/ICoEngineInterface;->ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveDocument(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "a_szFullPath"

    .prologue
    .line 323
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    :cond_0
    const/4 v4, 0x0

    .line 346
    :goto_0
    return-object v4

    .line 327
    :cond_1
    invoke-static {}, Lcom/infraware/PolarisOffice;->getInstance()Lcom/infraware/PolarisOffice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/infraware/PolarisOffice;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/infraware/filemanager/FmSettingActivity;->getFmSetting_BackupFile(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 330
    .local v0, bCreateBackup:Ljava/lang/Boolean;
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 331
    .local v2, nExtIndex:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, szExt:Ljava/lang/String;
    const/4 v1, 0x0

    .line 333
    .local v1, bSkipBackup:Z
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 335
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 336
    const/4 v1, 0x1

    .line 339
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    .line 340
    invoke-virtual {p0, p1}, Lcom/infraware/common/CoCoreFunctionInterface;->createBackupFile(Ljava/lang/String;)V

    .line 343
    :cond_3
    iput-object p1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szSavePath:Ljava/lang/String;

    .line 344
    iget-object v4, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object v4, p1

    .line 346
    goto :goto_0
.end method

.method public saveDocumentAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "a_szFullPath"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szSavePath:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 354
    return-object p1
.end method

.method public saveThumbnailAt(IIILjava/lang/String;I)V
    .locals 6
    .parameter "a_nPageIndex"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_szSavePath"
    .parameter "a_nSaveType"

    .prologue
    const/4 v1, 0x1

    .line 3116
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getPageCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 3117
    if-lt p2, v1, :cond_0

    if-lt p3, v1, :cond_0

    .line 3118
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3119
    if-ltz p5, :cond_0

    const/4 v0, 0x2

    if-le p5, v0, :cond_1

    .line 3126
    :cond_0
    :goto_0
    return-void

    .line 3122
    :cond_1
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bEditMode:Z

    if-eqz v0, :cond_3

    .line 3123
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p2, p3, p1}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideObjStartEx(III)V

    goto :goto_0

    .line 3125
    :cond_3
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->ISaveThumbnailAt(IIILjava/lang/String;I)V

    goto :goto_0
.end method

.method public scrollPage(IIIII)V
    .locals 6
    .parameter "a_nScrollType"
    .parameter "a_nFactorType"
    .parameter "a_nOffsetX"
    .parameter "a_nOffsetY"
    .parameter "a_nKeyType"

    .prologue
    .line 2156
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->IScroll(IIIII)V

    .line 2161
    return-void
.end method

.method public selectCell(Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;)V
    .locals 3
    .parameter "a_eSelectmode"

    .prologue
    .line 1954
    const/4 v0, 0x0

    .line 1955
    .local v0, nSelect:I
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_SELECT_MODE()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/infraware/common/UserClasses$CELL_SELECT_MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1962
    :goto_0
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/infraware/evengine/ICoEngineInterface;->ICaretMark(II)V

    .line 1963
    return-void

    .line 1957
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1958
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1959
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1960
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1955
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendHidLongEvent(II)V
    .locals 3
    .parameter "a_nPosX"
    .parameter "a_nPosY"

    .prologue
    .line 3005
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IHIDAction(IIII)V

    .line 3006
    return-void
.end method

.method public sendSheetFocusEvent()V
    .locals 1

    .prologue
    .line 3009
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFocus()V

    .line 3010
    return-void
.end method

.method public sendSheetInputField(I)V
    .locals 1
    .parameter "a_nVaule"

    .prologue
    .line 3013
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetInputField(I)V

    .line 3014
    return-void
.end method

.method public separateCell(II)V
    .locals 2
    .parameter "a_nRows"
    .parameter "a_nCols"

    .prologue
    .line 1009
    if-gtz p1, :cond_0

    if-lez p2, :cond_3

    .line 1011
    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 1012
    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    .line 1013
    :cond_2
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/infraware/evengine/ICoEngineInterface;->ICellMergeSeparate(III)V

    .line 1015
    :cond_3
    return-void
.end method

.method public setBorder(Lcom/infraware/common/UserClasses$FillBorderInfo;)V
    .locals 16
    .parameter "a_oBorderInfo"

    .prologue
    .line 1624
    const/4 v13, 0x0

    .line 1625
    .local v13, nMask:I
    const/4 v14, 0x0

    .line 1626
    .local v14, nStyle:I
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1645
    :goto_0
    shl-int/lit8 v13, v14, 0x14

    .line 1646
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 1665
    :goto_1
    shl-int/lit8 v1, v14, 0x10

    or-int/2addr v13, v1

    .line 1666
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 1685
    :goto_2
    shl-int/lit8 v1, v14, 0xc

    or-int/2addr v13, v1

    .line 1686
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    .line 1705
    :goto_3
    shl-int/lit8 v1, v14, 0x8

    or-int/2addr v13, v1

    .line 1706
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4

    .line 1725
    :goto_4
    shl-int/lit8 v1, v14, 0x4

    or-int/2addr v13, v1

    .line 1726
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5

    .line 1745
    :goto_5
    or-int/2addr v13, v14

    .line 1747
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    move v1, v0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    move v1, v0

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    .line 1749
    :cond_0
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v15

    .line 1751
    .local v15, sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iput v13, v15, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    .line 1752
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nLColor:I

    move v1, v0

    iput v1, v15, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderLeftColor:I

    .line 1753
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nTColor:I

    move v1, v0

    iput v1, v15, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderTopColor:I

    .line 1754
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nRColor:I

    move v1, v0

    iput v1, v15, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderRightColor:I

    .line 1755
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nBColor:I

    move v1, v0

    iput v1, v15, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderBottomColor:I

    .line 1756
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nVColor:I

    move v1, v0

    iput v1, v15, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderVerticalColor:I

    .line 1757
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nHColor:I

    move v1, v0

    iput v1, v15, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderHorizontalColor:I

    .line 1759
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1, v15}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetBorder(Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 1760
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nFillColor:I

    move v1, v0

    if-eqz v1, :cond_1

    .line 1761
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nFillColor:I

    move v2, v0

    invoke-virtual {v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetSetColor(I)V

    .line 1805
    .end local v15           #sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    :cond_1
    :goto_6
    return-void

    .line 1628
    :pswitch_0
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1629
    :pswitch_1
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1630
    :pswitch_2
    const/4 v14, 0x2

    goto/16 :goto_0

    .line 1631
    :pswitch_3
    const/4 v14, 0x3

    goto/16 :goto_0

    .line 1632
    :pswitch_4
    const/4 v14, 0x4

    goto/16 :goto_0

    .line 1633
    :pswitch_5
    const/4 v14, 0x5

    goto/16 :goto_0

    .line 1634
    :pswitch_6
    const/4 v14, 0x6

    goto/16 :goto_0

    .line 1635
    :pswitch_7
    const/4 v14, 0x7

    goto/16 :goto_0

    .line 1636
    :pswitch_8
    const/16 v14, 0x8

    goto/16 :goto_0

    .line 1637
    :pswitch_9
    const/16 v14, 0x9

    goto/16 :goto_0

    .line 1638
    :pswitch_a
    const/16 v14, 0xa

    goto/16 :goto_0

    .line 1639
    :pswitch_b
    const/16 v14, 0xb

    goto/16 :goto_0

    .line 1640
    :pswitch_c
    const/16 v14, 0xc

    goto/16 :goto_0

    .line 1641
    :pswitch_d
    const/16 v14, 0xd

    goto/16 :goto_0

    .line 1642
    :pswitch_e
    const/16 v14, 0xe

    goto/16 :goto_0

    .line 1643
    :pswitch_f
    const/16 v14, 0xf

    goto/16 :goto_0

    .line 1648
    :pswitch_10
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1649
    :pswitch_11
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 1650
    :pswitch_12
    const/4 v14, 0x2

    goto/16 :goto_1

    .line 1651
    :pswitch_13
    const/4 v14, 0x3

    goto/16 :goto_1

    .line 1652
    :pswitch_14
    const/4 v14, 0x4

    goto/16 :goto_1

    .line 1653
    :pswitch_15
    const/4 v14, 0x5

    goto/16 :goto_1

    .line 1654
    :pswitch_16
    const/4 v14, 0x6

    goto/16 :goto_1

    .line 1655
    :pswitch_17
    const/4 v14, 0x7

    goto/16 :goto_1

    .line 1656
    :pswitch_18
    const/16 v14, 0x8

    goto/16 :goto_1

    .line 1657
    :pswitch_19
    const/16 v14, 0x9

    goto/16 :goto_1

    .line 1658
    :pswitch_1a
    const/16 v14, 0xa

    goto/16 :goto_1

    .line 1659
    :pswitch_1b
    const/16 v14, 0xb

    goto/16 :goto_1

    .line 1660
    :pswitch_1c
    const/16 v14, 0xc

    goto/16 :goto_1

    .line 1661
    :pswitch_1d
    const/16 v14, 0xd

    goto/16 :goto_1

    .line 1662
    :pswitch_1e
    const/16 v14, 0xe

    goto/16 :goto_1

    .line 1663
    :pswitch_1f
    const/16 v14, 0xf

    goto/16 :goto_1

    .line 1668
    :pswitch_20
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1669
    :pswitch_21
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 1670
    :pswitch_22
    const/4 v14, 0x2

    goto/16 :goto_2

    .line 1671
    :pswitch_23
    const/4 v14, 0x3

    goto/16 :goto_2

    .line 1672
    :pswitch_24
    const/4 v14, 0x4

    goto/16 :goto_2

    .line 1673
    :pswitch_25
    const/4 v14, 0x5

    goto/16 :goto_2

    .line 1674
    :pswitch_26
    const/4 v14, 0x6

    goto/16 :goto_2

    .line 1675
    :pswitch_27
    const/4 v14, 0x7

    goto/16 :goto_2

    .line 1676
    :pswitch_28
    const/16 v14, 0x8

    goto/16 :goto_2

    .line 1677
    :pswitch_29
    const/16 v14, 0x9

    goto/16 :goto_2

    .line 1678
    :pswitch_2a
    const/16 v14, 0xa

    goto/16 :goto_2

    .line 1679
    :pswitch_2b
    const/16 v14, 0xb

    goto/16 :goto_2

    .line 1680
    :pswitch_2c
    const/16 v14, 0xc

    goto/16 :goto_2

    .line 1681
    :pswitch_2d
    const/16 v14, 0xd

    goto/16 :goto_2

    .line 1682
    :pswitch_2e
    const/16 v14, 0xe

    goto/16 :goto_2

    .line 1683
    :pswitch_2f
    const/16 v14, 0xf

    goto/16 :goto_2

    .line 1688
    :pswitch_30
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1689
    :pswitch_31
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 1690
    :pswitch_32
    const/4 v14, 0x2

    goto/16 :goto_3

    .line 1691
    :pswitch_33
    const/4 v14, 0x3

    goto/16 :goto_3

    .line 1692
    :pswitch_34
    const/4 v14, 0x4

    goto/16 :goto_3

    .line 1693
    :pswitch_35
    const/4 v14, 0x5

    goto/16 :goto_3

    .line 1694
    :pswitch_36
    const/4 v14, 0x6

    goto/16 :goto_3

    .line 1695
    :pswitch_37
    const/4 v14, 0x7

    goto/16 :goto_3

    .line 1696
    :pswitch_38
    const/16 v14, 0x8

    goto/16 :goto_3

    .line 1697
    :pswitch_39
    const/16 v14, 0x9

    goto/16 :goto_3

    .line 1698
    :pswitch_3a
    const/16 v14, 0xa

    goto/16 :goto_3

    .line 1699
    :pswitch_3b
    const/16 v14, 0xb

    goto/16 :goto_3

    .line 1700
    :pswitch_3c
    const/16 v14, 0xc

    goto/16 :goto_3

    .line 1701
    :pswitch_3d
    const/16 v14, 0xd

    goto/16 :goto_3

    .line 1702
    :pswitch_3e
    const/16 v14, 0xe

    goto/16 :goto_3

    .line 1703
    :pswitch_3f
    const/16 v14, 0xf

    goto/16 :goto_3

    .line 1708
    :pswitch_40
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1709
    :pswitch_41
    const/4 v14, 0x1

    goto/16 :goto_4

    .line 1710
    :pswitch_42
    const/4 v14, 0x2

    goto/16 :goto_4

    .line 1711
    :pswitch_43
    const/4 v14, 0x3

    goto/16 :goto_4

    .line 1712
    :pswitch_44
    const/4 v14, 0x4

    goto/16 :goto_4

    .line 1713
    :pswitch_45
    const/4 v14, 0x5

    goto/16 :goto_4

    .line 1714
    :pswitch_46
    const/4 v14, 0x6

    goto/16 :goto_4

    .line 1715
    :pswitch_47
    const/4 v14, 0x7

    goto/16 :goto_4

    .line 1716
    :pswitch_48
    const/16 v14, 0x8

    goto/16 :goto_4

    .line 1717
    :pswitch_49
    const/16 v14, 0x9

    goto/16 :goto_4

    .line 1718
    :pswitch_4a
    const/16 v14, 0xa

    goto/16 :goto_4

    .line 1719
    :pswitch_4b
    const/16 v14, 0xb

    goto/16 :goto_4

    .line 1720
    :pswitch_4c
    const/16 v14, 0xc

    goto/16 :goto_4

    .line 1721
    :pswitch_4d
    const/16 v14, 0xd

    goto/16 :goto_4

    .line 1722
    :pswitch_4e
    const/16 v14, 0xe

    goto/16 :goto_4

    .line 1723
    :pswitch_4f
    const/16 v14, 0xf

    goto/16 :goto_4

    .line 1728
    :pswitch_50
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 1729
    :pswitch_51
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 1730
    :pswitch_52
    const/4 v14, 0x2

    goto/16 :goto_5

    .line 1731
    :pswitch_53
    const/4 v14, 0x3

    goto/16 :goto_5

    .line 1732
    :pswitch_54
    const/4 v14, 0x4

    goto/16 :goto_5

    .line 1733
    :pswitch_55
    const/4 v14, 0x5

    goto/16 :goto_5

    .line 1734
    :pswitch_56
    const/4 v14, 0x6

    goto/16 :goto_5

    .line 1735
    :pswitch_57
    const/4 v14, 0x7

    goto/16 :goto_5

    .line 1736
    :pswitch_58
    const/16 v14, 0x8

    goto/16 :goto_5

    .line 1737
    :pswitch_59
    const/16 v14, 0x9

    goto/16 :goto_5

    .line 1738
    :pswitch_5a
    const/16 v14, 0xa

    goto/16 :goto_5

    .line 1739
    :pswitch_5b
    const/16 v14, 0xb

    goto/16 :goto_5

    .line 1740
    :pswitch_5c
    const/16 v14, 0xc

    goto/16 :goto_5

    .line 1741
    :pswitch_5d
    const/16 v14, 0xd

    goto/16 :goto_5

    .line 1742
    :pswitch_5e
    const/16 v14, 0xe

    goto/16 :goto_5

    .line 1743
    :pswitch_5f
    const/16 v14, 0xf

    goto/16 :goto_5

    .line 1768
    :cond_2
    const/4 v12, 0x0

    .line 1769
    .local v12, nColorMask:I
    or-int/lit8 v12, v12, 0x1

    .line 1770
    or-int/lit8 v12, v12, 0x2

    .line 1771
    or-int/lit8 v12, v12, 0x4

    .line 1772
    or-int/lit8 v12, v12, 0x8

    .line 1773
    or-int/lit8 v12, v12, 0x10

    .line 1774
    or-int/lit8 v12, v12, 0x20

    .line 1775
    or-int/lit16 v12, v12, 0x400

    .line 1776
    or-int/lit16 v12, v12, 0x800

    .line 1777
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eLStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-object v1, v0

    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nLColor:I

    move v1, v0

    if-eqz v1, :cond_3

    .line 1778
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eTStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-object v1, v0

    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nTColor:I

    move v1, v0

    if-eqz v1, :cond_3

    .line 1779
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eRStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-object v1, v0

    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nRColor:I

    move v1, v0

    if-eqz v1, :cond_3

    .line 1780
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eBStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-object v1, v0

    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nBColor:I

    move v1, v0

    if-eqz v1, :cond_3

    .line 1781
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eVStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-object v1, v0

    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nVColor:I

    move v1, v0

    if-eqz v1, :cond_3

    .line 1782
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->eHStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    move-object v1, v0

    sget-object v2, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_NONE:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nHColor:I

    move v1, v0

    if-eqz v1, :cond_3

    .line 1783
    or-int/lit16 v12, v12, 0x200

    .line 1788
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nFillColor:I

    move v1, v0

    if-eqz v1, :cond_4

    .line 1789
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nFillColor:I

    move v3, v0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->ISetColors(III)V

    .line 1791
    :cond_4
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/16 v2, 0x800

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/infraware/evengine/ICoEngineInterface;->ISetBorder(IIIIIIIIIZ)V

    .line 1793
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 1796
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nLColor:I

    move v4, v0

    .line 1797
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nTColor:I

    move v5, v0

    .line 1798
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nRColor:I

    move v6, v0

    .line 1799
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nBColor:I

    move v7, v0

    .line 1800
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nHColor:I

    move v8, v0

    .line 1801
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nVColor:I

    move v9, v0

    .line 1802
    move-object/from16 v0, p1

    iget v0, v0, Lcom/infraware/common/UserClasses$FillBorderInfo;->nFillColor:I

    move v10, v0

    .line 1803
    const/4 v11, 0x0

    move v2, v12

    move v3, v13

    .line 1793
    invoke-virtual/range {v1 .. v11}, Lcom/infraware/evengine/ICoEngineInterface;->ISetBorder(IIIIIIIIIZ)V

    goto/16 :goto_6

    .line 1626
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 1646
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 1666
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
    .end packed-switch

    .line 1686
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
    .end packed-switch

    .line 1706
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
    .end packed-switch

    .line 1726
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
    .end packed-switch
.end method

.method public setBorderColor(IIIIIII)V
    .locals 14
    .parameter "a_nMaskChangePostion"
    .parameter "a_nLeftColor"
    .parameter "a_nTopColor"
    .parameter "a_nRightColor"
    .parameter "a_nBottomColor"
    .parameter "a_nHorizonColor"
    .parameter "a_nVerticalColor"

    .prologue
    .line 1582
    const/4 v3, 0x0

    .line 1584
    .local v3, nApplyMask:I
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 1585
    or-int/lit8 v3, v3, 0x1

    .line 1586
    :cond_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    .line 1587
    or-int/lit8 v3, v3, 0x2

    .line 1588
    :cond_1
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2

    .line 1589
    or-int/lit8 v3, v3, 0x4

    .line 1590
    :cond_2
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    .line 1591
    or-int/lit8 v3, v3, 0x8

    .line 1592
    :cond_3
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_4

    .line 1593
    or-int/lit8 v3, v3, 0x10

    .line 1594
    :cond_4
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_5

    .line 1595
    or-int/lit8 v3, v3, 0x20

    .line 1597
    :cond_5
    if-eqz v3, :cond_7

    .line 1599
    iget v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_6

    iget v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v4, 0x14

    if-ne v2, v4, :cond_8

    .line 1601
    :cond_6
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v13

    .line 1603
    .local v13, sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    move/from16 v0, p2

    move-object v1, v13

    iput v0, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderLeftColor:I

    .line 1604
    move/from16 v0, p3

    move-object v1, v13

    iput v0, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderTopColor:I

    .line 1605
    move/from16 v0, p4

    move-object v1, v13

    iput v0, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderRightColor:I

    .line 1606
    move/from16 v0, p5

    move-object v1, v13

    iput v0, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderBottomColor:I

    .line 1608
    move/from16 v0, p7

    move-object v1, v13

    iput v0, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderVerticalColor:I

    .line 1609
    move/from16 v0, p6

    move-object v1, v13

    iput v0, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderHorizontalColor:I

    .line 1611
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2, v13}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetBorder(Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 1620
    .end local v13           #sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    :cond_7
    :goto_0
    return-void

    .line 1615
    :cond_8
    or-int/lit16 v3, v3, 0x200

    .line 1616
    or-int/lit16 v3, v3, 0x800

    .line 1617
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v4, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v12}, Lcom/infraware/evengine/ICoEngineInterface;->ISetBorder(IIIIIIIIIZ)V

    goto :goto_0
.end method

.method public setBorderStyle(ILcom/infraware/common/UserClasses$BORDER_STYLE;Lcom/infraware/common/UserClasses$BORDER_STYLE;Lcom/infraware/common/UserClasses$BORDER_STYLE;Lcom/infraware/common/UserClasses$BORDER_STYLE;Lcom/infraware/common/UserClasses$BORDER_STYLE;Lcom/infraware/common/UserClasses$BORDER_STYLE;)V
    .locals 22
    .parameter "a_nMaskChangePostion"
    .parameter "a_eLStyle"
    .parameter "a_eTStyle"
    .parameter "a_eRStyle"
    .parameter "a_eBStyle"
    .parameter "a_eVStyle"
    .parameter "a_eHStyle"

    .prologue
    .line 1364
    const/4 v4, 0x0

    .line 1365
    .local v4, nMask:I
    const/16 v18, 0x0

    .line 1366
    .local v18, nStyle:I
    const/4 v3, 0x0

    .line 1367
    .local v3, nApplyMask:I
    const/4 v15, 0x0

    .line 1368
    .local v15, nLeftMask:I
    const/16 v19, 0x0

    .line 1369
    .local v19, nTopMask:I
    const/16 v16, 0x0

    .line 1370
    .local v16, nRightMask:I
    const/4 v13, 0x0

    .line 1371
    .local v13, nBottomMask:I
    const/16 v20, 0x0

    .line 1372
    .local v20, nVerticalMask:I
    const/4 v14, 0x0

    .line 1374
    .local v14, nHorizontalMask:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    move v2, v0

    const/4 v5, 0x5

    if-eq v2, v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    move v2, v0

    const/16 v5, 0x14

    if-ne v2, v5, :cond_3

    .line 1376
    :cond_0
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v21

    .line 1377
    .local v21, sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    move/from16 v17, v0

    .line 1378
    .local v17, nSheetMask:I
    shr-int/lit8 v2, v17, 0x14

    and-int/lit8 v15, v2, 0xf

    .line 1379
    shr-int/lit8 v2, v17, 0x10

    and-int/lit8 v19, v2, 0xf

    .line 1380
    shr-int/lit8 v2, v17, 0xc

    and-int/lit8 v16, v2, 0xf

    .line 1381
    shr-int/lit8 v2, v17, 0x8

    and-int/lit8 v13, v2, 0xf

    .line 1382
    shr-int/lit8 v2, v17, 0x4

    and-int/lit8 v20, v2, 0xf

    .line 1383
    and-int/lit8 v14, v17, 0xf

    .line 1388
    .end local v17           #nSheetMask:I
    .end local v21           #sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    :goto_0
    and-int/lit8 v2, p1, 0x1

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 1390
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 1409
    :goto_1
    shl-int/lit8 v2, v18, 0x14

    or-int/2addr v4, v2

    .line 1410
    or-int/lit8 v3, v3, 0x1

    .line 1415
    :goto_2
    const/16 v18, 0x0

    .line 1417
    and-int/lit8 v2, p1, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 1419
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_1

    .line 1438
    :goto_3
    shl-int/lit8 v2, v18, 0x10

    or-int/2addr v4, v2

    .line 1439
    or-int/lit8 v3, v3, 0x2

    .line 1444
    :goto_4
    const/16 v18, 0x0

    .line 1446
    and-int/lit8 v2, p1, 0x4

    const/4 v5, 0x4

    if-ne v2, v5, :cond_6

    .line 1448
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_2

    .line 1467
    :goto_5
    shl-int/lit8 v2, v18, 0xc

    or-int/2addr v4, v2

    .line 1468
    or-int/lit8 v3, v3, 0x4

    .line 1473
    :goto_6
    const/16 v18, 0x0

    .line 1475
    and-int/lit8 v2, p1, 0x8

    const/16 v5, 0x8

    if-ne v2, v5, :cond_7

    .line 1477
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_3

    .line 1496
    :goto_7
    shl-int/lit8 v2, v18, 0x8

    or-int/2addr v4, v2

    .line 1497
    or-int/lit8 v3, v3, 0x8

    .line 1502
    :goto_8
    const/16 v18, 0x0

    .line 1504
    and-int/lit8 v2, p1, 0x10

    const/16 v5, 0x10

    if-ne v2, v5, :cond_8

    .line 1506
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_4

    .line 1525
    :goto_9
    shl-int/lit8 v2, v18, 0x4

    or-int/2addr v4, v2

    .line 1526
    or-int/lit8 v3, v3, 0x10

    .line 1531
    :goto_a
    const/16 v18, 0x0

    .line 1533
    and-int/lit8 v2, p1, 0x20

    const/16 v5, 0x20

    if-ne v2, v5, :cond_9

    .line 1535
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$BORDER_STYLE()[I

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Lcom/infraware/common/UserClasses$BORDER_STYLE;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_5

    .line 1554
    :goto_b
    or-int v4, v4, v18

    .line 1555
    or-int/lit8 v3, v3, 0x20

    .line 1560
    :goto_c
    if-eqz v3, :cond_2

    .line 1562
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    move v2, v0

    const/4 v5, 0x5

    if-eq v2, v5, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    move v2, v0

    const/16 v5, 0x14

    if-ne v2, v5, :cond_a

    .line 1564
    :cond_1
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v21

    .line 1566
    .restart local v21       #sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    move v0, v4

    move-object/from16 v1, v21

    iput v0, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    .line 1568
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetBorder(Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 1578
    .end local v21           #sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    :cond_2
    :goto_d
    return-void

    .line 1386
    :cond_3
    const/16 v14, 0xf

    move/from16 v20, v14

    move v13, v14

    move/from16 v16, v14

    move/from16 v19, v14

    move v15, v14

    goto/16 :goto_0

    .line 1392
    :pswitch_0
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1393
    :pswitch_1
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1394
    :pswitch_2
    const/16 v18, 0x2

    goto/16 :goto_1

    .line 1395
    :pswitch_3
    const/16 v18, 0x3

    goto/16 :goto_1

    .line 1396
    :pswitch_4
    const/16 v18, 0x4

    goto/16 :goto_1

    .line 1397
    :pswitch_5
    const/16 v18, 0x5

    goto/16 :goto_1

    .line 1398
    :pswitch_6
    const/16 v18, 0x6

    goto/16 :goto_1

    .line 1399
    :pswitch_7
    const/16 v18, 0x7

    goto/16 :goto_1

    .line 1400
    :pswitch_8
    const/16 v18, 0x8

    goto/16 :goto_1

    .line 1401
    :pswitch_9
    const/16 v18, 0x9

    goto/16 :goto_1

    .line 1402
    :pswitch_a
    const/16 v18, 0xa

    goto/16 :goto_1

    .line 1403
    :pswitch_b
    const/16 v18, 0xb

    goto/16 :goto_1

    .line 1404
    :pswitch_c
    const/16 v18, 0xc

    goto/16 :goto_1

    .line 1405
    :pswitch_d
    const/16 v18, 0xd

    goto/16 :goto_1

    .line 1406
    :pswitch_e
    const/16 v18, 0xe

    goto/16 :goto_1

    .line 1407
    :pswitch_f
    const/16 v18, 0xf

    goto/16 :goto_1

    .line 1413
    :cond_4
    shl-int/lit8 v4, v15, 0x14

    goto/16 :goto_2

    .line 1421
    :pswitch_10
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 1422
    :pswitch_11
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 1423
    :pswitch_12
    const/16 v18, 0x2

    goto/16 :goto_3

    .line 1424
    :pswitch_13
    const/16 v18, 0x3

    goto/16 :goto_3

    .line 1425
    :pswitch_14
    const/16 v18, 0x4

    goto/16 :goto_3

    .line 1426
    :pswitch_15
    const/16 v18, 0x5

    goto/16 :goto_3

    .line 1427
    :pswitch_16
    const/16 v18, 0x6

    goto/16 :goto_3

    .line 1428
    :pswitch_17
    const/16 v18, 0x7

    goto/16 :goto_3

    .line 1429
    :pswitch_18
    const/16 v18, 0x8

    goto/16 :goto_3

    .line 1430
    :pswitch_19
    const/16 v18, 0x9

    goto/16 :goto_3

    .line 1431
    :pswitch_1a
    const/16 v18, 0xa

    goto/16 :goto_3

    .line 1432
    :pswitch_1b
    const/16 v18, 0xb

    goto/16 :goto_3

    .line 1433
    :pswitch_1c
    const/16 v18, 0xc

    goto/16 :goto_3

    .line 1434
    :pswitch_1d
    const/16 v18, 0xd

    goto/16 :goto_3

    .line 1435
    :pswitch_1e
    const/16 v18, 0xe

    goto/16 :goto_3

    .line 1436
    :pswitch_1f
    const/16 v18, 0xf

    goto/16 :goto_3

    .line 1442
    :cond_5
    shl-int/lit8 v2, v19, 0x10

    or-int/2addr v4, v2

    goto/16 :goto_4

    .line 1450
    :pswitch_20
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 1451
    :pswitch_21
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1452
    :pswitch_22
    const/16 v18, 0x2

    goto/16 :goto_5

    .line 1453
    :pswitch_23
    const/16 v18, 0x3

    goto/16 :goto_5

    .line 1454
    :pswitch_24
    const/16 v18, 0x4

    goto/16 :goto_5

    .line 1455
    :pswitch_25
    const/16 v18, 0x5

    goto/16 :goto_5

    .line 1456
    :pswitch_26
    const/16 v18, 0x6

    goto/16 :goto_5

    .line 1457
    :pswitch_27
    const/16 v18, 0x7

    goto/16 :goto_5

    .line 1458
    :pswitch_28
    const/16 v18, 0x8

    goto/16 :goto_5

    .line 1459
    :pswitch_29
    const/16 v18, 0x9

    goto/16 :goto_5

    .line 1460
    :pswitch_2a
    const/16 v18, 0xa

    goto/16 :goto_5

    .line 1461
    :pswitch_2b
    const/16 v18, 0xb

    goto/16 :goto_5

    .line 1462
    :pswitch_2c
    const/16 v18, 0xc

    goto/16 :goto_5

    .line 1463
    :pswitch_2d
    const/16 v18, 0xd

    goto/16 :goto_5

    .line 1464
    :pswitch_2e
    const/16 v18, 0xe

    goto/16 :goto_5

    .line 1465
    :pswitch_2f
    const/16 v18, 0xf

    goto/16 :goto_5

    .line 1471
    :cond_6
    shl-int/lit8 v2, v16, 0xc

    or-int/2addr v4, v2

    goto/16 :goto_6

    .line 1479
    :pswitch_30
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 1480
    :pswitch_31
    const/16 v18, 0x1

    goto/16 :goto_7

    .line 1481
    :pswitch_32
    const/16 v18, 0x2

    goto/16 :goto_7

    .line 1482
    :pswitch_33
    const/16 v18, 0x3

    goto/16 :goto_7

    .line 1483
    :pswitch_34
    const/16 v18, 0x4

    goto/16 :goto_7

    .line 1484
    :pswitch_35
    const/16 v18, 0x5

    goto/16 :goto_7

    .line 1485
    :pswitch_36
    const/16 v18, 0x6

    goto/16 :goto_7

    .line 1486
    :pswitch_37
    const/16 v18, 0x7

    goto/16 :goto_7

    .line 1487
    :pswitch_38
    const/16 v18, 0x8

    goto/16 :goto_7

    .line 1488
    :pswitch_39
    const/16 v18, 0x9

    goto/16 :goto_7

    .line 1489
    :pswitch_3a
    const/16 v18, 0xa

    goto/16 :goto_7

    .line 1490
    :pswitch_3b
    const/16 v18, 0xb

    goto/16 :goto_7

    .line 1491
    :pswitch_3c
    const/16 v18, 0xc

    goto/16 :goto_7

    .line 1492
    :pswitch_3d
    const/16 v18, 0xd

    goto/16 :goto_7

    .line 1493
    :pswitch_3e
    const/16 v18, 0xe

    goto/16 :goto_7

    .line 1494
    :pswitch_3f
    const/16 v18, 0xf

    goto/16 :goto_7

    .line 1500
    :cond_7
    shl-int/lit8 v2, v13, 0x8

    or-int/2addr v4, v2

    goto/16 :goto_8

    .line 1508
    :pswitch_40
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 1509
    :pswitch_41
    const/16 v18, 0x1

    goto/16 :goto_9

    .line 1510
    :pswitch_42
    const/16 v18, 0x2

    goto/16 :goto_9

    .line 1511
    :pswitch_43
    const/16 v18, 0x3

    goto/16 :goto_9

    .line 1512
    :pswitch_44
    const/16 v18, 0x4

    goto/16 :goto_9

    .line 1513
    :pswitch_45
    const/16 v18, 0x5

    goto/16 :goto_9

    .line 1514
    :pswitch_46
    const/16 v18, 0x6

    goto/16 :goto_9

    .line 1515
    :pswitch_47
    const/16 v18, 0x7

    goto/16 :goto_9

    .line 1516
    :pswitch_48
    const/16 v18, 0x8

    goto/16 :goto_9

    .line 1517
    :pswitch_49
    const/16 v18, 0x9

    goto/16 :goto_9

    .line 1518
    :pswitch_4a
    const/16 v18, 0xa

    goto/16 :goto_9

    .line 1519
    :pswitch_4b
    const/16 v18, 0xb

    goto/16 :goto_9

    .line 1520
    :pswitch_4c
    const/16 v18, 0xc

    goto/16 :goto_9

    .line 1521
    :pswitch_4d
    const/16 v18, 0xd

    goto/16 :goto_9

    .line 1522
    :pswitch_4e
    const/16 v18, 0xe

    goto/16 :goto_9

    .line 1523
    :pswitch_4f
    const/16 v18, 0xf

    goto/16 :goto_9

    .line 1529
    :cond_8
    shl-int/lit8 v2, v20, 0x4

    or-int/2addr v4, v2

    goto/16 :goto_a

    .line 1537
    :pswitch_50
    const/16 v18, 0x0

    goto/16 :goto_b

    .line 1538
    :pswitch_51
    const/16 v18, 0x1

    goto/16 :goto_b

    .line 1539
    :pswitch_52
    const/16 v18, 0x2

    goto/16 :goto_b

    .line 1540
    :pswitch_53
    const/16 v18, 0x3

    goto/16 :goto_b

    .line 1541
    :pswitch_54
    const/16 v18, 0x4

    goto/16 :goto_b

    .line 1542
    :pswitch_55
    const/16 v18, 0x5

    goto/16 :goto_b

    .line 1543
    :pswitch_56
    const/16 v18, 0x6

    goto/16 :goto_b

    .line 1544
    :pswitch_57
    const/16 v18, 0x7

    goto/16 :goto_b

    .line 1545
    :pswitch_58
    const/16 v18, 0x8

    goto/16 :goto_b

    .line 1546
    :pswitch_59
    const/16 v18, 0x9

    goto/16 :goto_b

    .line 1547
    :pswitch_5a
    const/16 v18, 0xa

    goto/16 :goto_b

    .line 1548
    :pswitch_5b
    const/16 v18, 0xb

    goto/16 :goto_b

    .line 1549
    :pswitch_5c
    const/16 v18, 0xc

    goto/16 :goto_b

    .line 1550
    :pswitch_5d
    const/16 v18, 0xd

    goto/16 :goto_b

    .line 1551
    :pswitch_5e
    const/16 v18, 0xe

    goto/16 :goto_b

    .line 1552
    :pswitch_5f
    const/16 v18, 0xf

    goto/16 :goto_b

    .line 1558
    :cond_9
    or-int/2addr v4, v14

    goto/16 :goto_c

    .line 1573
    :cond_a
    or-int/lit16 v3, v3, 0x400

    .line 1574
    or-int/lit16 v3, v3, 0x800

    .line 1575
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/infraware/evengine/ICoEngineInterface;->ISetBorder(IIIIIIIIIZ)V

    goto/16 :goto_d

    .line 1390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 1419
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 1448
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
    .end packed-switch

    .line 1477
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
    .end packed-switch

    .line 1506
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
    .end packed-switch

    .line 1535
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
    .end packed-switch
.end method

.method public setColWidth(IZ)V
    .locals 3
    .parameter "a_nWidth"
    .parameter "a_bAutoFit"

    .prologue
    const/4 v2, 0x1

    .line 2264
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2265
    :cond_0
    if-eqz p2, :cond_1

    move v0, v2

    .line 2266
    .local v0, nFit:I
    :goto_0
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1, v2, p1, v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetSetRowColSize(III)V

    .line 2267
    return-void

    .line 2265
    .end local v0           #nFit:I
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setColumnVisiable(ZZ)V
    .locals 4
    .parameter "a_bShow"
    .parameter "a_bAutoFit"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2786
    if-eqz p1, :cond_0

    move v1, v3

    .line 2787
    .local v1, nShow:I
    :goto_0
    if-eqz p2, :cond_1

    move v0, v3

    .line 2788
    .local v0, nFit:I
    :goto_1
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2, v3, v1, v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetShowHideRowCol(III)V

    .line 2789
    return-void

    .end local v0           #nFit:I
    .end local v1           #nShow:I
    :cond_0
    move v1, v2

    .line 2786
    goto :goto_0

    .restart local v1       #nShow:I
    :cond_1
    move v0, v2

    .line 2787
    goto :goto_1
.end method

.method public setContinousMode(Z)V
    .locals 3
    .parameter "a_bContinue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2926
    if-eqz p1, :cond_0

    .line 2928
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ISetScreenMode(I)V

    .line 2929
    iput-boolean v2, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bContiousMode:Z

    .line 2936
    :goto_0
    return-void

    .line 2933
    :cond_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, v2}, Lcom/infraware/evengine/ICoEngineInterface;->ISetScreenMode(I)V

    .line 2934
    iput-boolean v1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bContiousMode:Z

    goto :goto_0
.end method

.method public setDisplayPage(I)V
    .locals 3
    .parameter "a_nIndex"

    .prologue
    .line 2190
    if-ltz p1, :cond_0

    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/evengine/EV$CONFIG_INFO;->nTotalPages:I

    if-ge p1, v0, :cond_0

    .line 2191
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x6

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IMovePage(II)V

    .line 2192
    :cond_0
    return-void
.end method

.method public setDisplaySheet(I)V
    .locals 3
    .parameter "a_nIndex"

    .prologue
    .line 2186
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x6

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IMovePage(II)V

    .line 2187
    return-void
.end method

.method public setDocumentType(I)V
    .locals 0
    .parameter "a_nDocumentType"

    .prologue
    .line 102
    iput p1, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    .line 103
    return-void
.end method

.method public setFillBorderUndoMarking(IIIIIII)V
    .locals 11
    .parameter "a_nMaskChangePostion"
    .parameter "a_nLeftColor"
    .parameter "a_nTopColor"
    .parameter "a_nRightColor"
    .parameter "a_nBottomColor"
    .parameter "a_nHorizonColor"
    .parameter "a_nVerticalColor"

    .prologue
    .line 604
    const/4 v1, 0x0

    .line 606
    .local v1, nApplyMask:I
    or-int/lit8 v1, v1, 0x1

    .line 608
    or-int/lit16 v1, v1, 0x200

    .line 609
    or-int/lit16 v1, v1, 0x800

    .line 611
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v2, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v10}, Lcom/infraware/evengine/ICoEngineInterface;->ISetBorder(IIIIIIIIIZ)V

    .line 613
    return-void
.end method

.method public setFixFrame()V
    .locals 1

    .prologue
    .line 2831
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFixFrame()V

    .line 2832
    return-void
.end method

.method public setFontColor(II)V
    .locals 10
    .parameter "a_nForeground"
    .parameter "a_nBackground"

    .prologue
    const/16 v0, -0x270f

    const/4 v2, 0x0

    .line 667
    const/4 v3, 0x0

    .line 668
    .local v3, nMask:I
    const/4 v5, 0x0

    .line 669
    .local v5, FGColor:I
    const/4 v6, 0x0

    .line 670
    .local v6, BGColor:I
    if-eq p1, v0, :cond_0

    .line 672
    or-int/lit16 v3, v3, 0x4000

    .line 673
    move v5, p1

    .line 675
    :cond_0
    if-eq p2, v0, :cond_2

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 677
    :cond_1
    const v0, 0x8000

    or-int/2addr v3, v0

    .line 678
    move v6, p2

    .line 680
    :cond_2
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    move v4, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/evengine/ICoEngineInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIIIZ)V

    .line 681
    return-void
.end method

.method public setFontFace(I)V
    .locals 10
    .parameter "a_nFontIndex"

    .prologue
    const/4 v2, 0x0

    .line 687
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getFontFaceList()Ljava/util/ArrayList;

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 693
    .local v1, szFontName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 695
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v3, 0x3

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/evengine/ICoEngineInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIIIZ)V

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 11
    .parameter "a_nSize"

    .prologue
    const/4 v4, 0x0

    .line 529
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v10

    .line 530
    .local v10, AttInfo:Lcom/infraware/evengine/EV$FONT_INFO;
    const/4 v2, 0x0

    .line 532
    .local v2, nFsize:I
    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    const/4 v2, 0x6

    .line 536
    :goto_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    const/4 v3, 0x4

    iget v5, v10, Lcom/infraware/evengine/EV$FONT_INFO;->nFColor:I

    iget v6, v10, Lcom/infraware/evengine/EV$FONT_INFO;->nBColor:I

    move v7, v4

    move v8, v4

    move v9, v4

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/evengine/ICoEngineInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIIIZ)V

    .line 537
    return-void

    .line 533
    :cond_0
    const/16 v0, 0x48

    if-le p1, v0, :cond_1

    const/16 v2, 0x48

    goto :goto_0

    .line 534
    :cond_1
    move v2, p1

    goto :goto_0
.end method

.method public setFontStyle(II)V
    .locals 10
    .parameter "a_nMaskAtt"
    .parameter "a_nAttInfo"

    .prologue
    const/4 v2, 0x0

    .line 652
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    move v3, p1

    move v4, p2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/evengine/ICoEngineInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIIIZ)V

    .line 653
    return-void
.end method

.method public setFontUndoMarking()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 592
    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getFontInfo()Lcom/infraware/common/UserClasses$FontInfo;

    move-result-object v11

    .line 594
    .local v11, oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v10

    .line 595
    .local v10, AttInfo:Lcom/infraware/evengine/EV$FONT_INFO;
    const/16 v3, 0x20

    .line 596
    .local v3, nMaskAtt:I
    iget v4, v10, Lcom/infraware/evengine/EV$FONT_INFO;->nFontAtt:I

    .line 599
    .local v4, nAttInfo:I
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    const/4 v9, 0x1

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/evengine/ICoEngineInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIIIZ)V

    .line 600
    return-void
.end method

.method public setFormatCurrencyInfo(Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;)V
    .locals 10
    .parameter "a_oCurrencyInfo"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 2427
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v9

    .line 2429
    .local v9, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iget v0, p1, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_nPointerIndex:I

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    .line 2432
    iput v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 2434
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_CURRENCY_TYPE()[I

    move-result-object v0

    iget-object v1, p1, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eCurrency:Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_CURRENCY_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2461
    :goto_0
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_NEGATIVE_TYPE()[I

    move-result-object v0

    .line 2463
    iget-object v1, p1, Lcom/infraware/common/UserClasses$CellFormatCurrencyInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 2484
    :goto_1
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    iget v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iget v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    iget v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    iget v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    iget v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    iget v7, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    iget v8, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFormat(IIIIIIII)V

    .line 2485
    return-void

    .line 2437
    :pswitch_0
    iput v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    goto :goto_0

    .line 2440
    :pswitch_1
    iput v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    goto :goto_0

    .line 2443
    :pswitch_2
    iput v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    goto :goto_0

    .line 2446
    :pswitch_3
    iput v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    goto :goto_0

    .line 2449
    :pswitch_4
    iput v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    goto :goto_0

    .line 2452
    :pswitch_5
    const/4 v0, 0x5

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    goto :goto_0

    .line 2455
    :pswitch_6
    const/4 v0, 0x6

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    goto :goto_0

    .line 2458
    :pswitch_7
    const/4 v0, 0x7

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    goto :goto_0

    .line 2466
    :pswitch_8
    iput v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    goto :goto_1

    .line 2469
    :pswitch_9
    iput v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    goto :goto_1

    .line 2472
    :pswitch_a
    iput v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    goto :goto_1

    .line 2475
    :pswitch_b
    iput v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    goto :goto_1

    .line 2478
    :pswitch_c
    iput v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    goto :goto_1

    .line 2481
    :pswitch_d
    const/4 v0, 0x5

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    goto :goto_1

    .line 2434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2463
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public setFormatDateInfo(Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;)V
    .locals 10
    .parameter "a_eDateType"

    .prologue
    const/4 v2, 0x3

    .line 2512
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v9

    .line 2515
    .local v9, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iput v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 2517
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_DATE_TYPE()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_DATE_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2548
    :goto_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    iget v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iget v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    iget v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    iget v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    iget v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    iget v7, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    iget v8, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFormat(IIIIIIII)V

    .line 2549
    return-void

    .line 2520
    :pswitch_0
    const/4 v0, 0x0

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    goto :goto_0

    .line 2523
    :pswitch_1
    const/4 v0, 0x1

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    goto :goto_0

    .line 2526
    :pswitch_2
    const/4 v0, 0x2

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    goto :goto_0

    .line 2529
    :pswitch_3
    iput v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    goto :goto_0

    .line 2532
    :pswitch_4
    const/4 v0, 0x4

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    goto :goto_0

    .line 2535
    :pswitch_5
    const/4 v0, 0x5

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    goto :goto_0

    .line 2538
    :pswitch_6
    const/4 v0, 0x6

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    goto :goto_0

    .line 2541
    :pswitch_7
    const/4 v0, 0x7

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    goto :goto_0

    .line 2544
    :pswitch_8
    const/16 v0, 0x8

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    goto :goto_0

    .line 2517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setFormatFractionInfo(Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;)V
    .locals 10
    .parameter "a_eFractionType"

    .prologue
    const/4 v2, 0x6

    .line 2577
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v9

    .line 2580
    .local v9, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iput v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 2582
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_FRACTION_TYPE()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_FRACTION_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2617
    :goto_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    iget v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iget v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    iget v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    iget v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    iget v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    iget v7, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    iget v8, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFormat(IIIIIIII)V

    .line 2618
    return-void

    .line 2585
    :pswitch_0
    const/4 v0, 0x0

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    goto :goto_0

    .line 2588
    :pswitch_1
    const/4 v0, 0x1

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    goto :goto_0

    .line 2591
    :pswitch_2
    const/4 v0, 0x2

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    goto :goto_0

    .line 2594
    :pswitch_3
    const/4 v0, 0x3

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    goto :goto_0

    .line 2597
    :pswitch_4
    const/4 v0, 0x4

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    goto :goto_0

    .line 2600
    :pswitch_5
    const/4 v0, 0x5

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    goto :goto_0

    .line 2603
    :pswitch_6
    iput v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    goto :goto_0

    .line 2606
    :pswitch_7
    const/4 v0, 0x7

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    goto :goto_0

    .line 2609
    :pswitch_8
    const/16 v0, 0x8

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    goto :goto_0

    .line 2612
    :pswitch_9
    const/16 v0, 0x9

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    goto :goto_0

    .line 2582
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setFormatGeneralInfo()V
    .locals 10

    .prologue
    .line 2671
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v9

    .line 2673
    .local v9, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    const/4 v0, 0x0

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 2674
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    iget v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iget v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    iget v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    iget v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    iget v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    iget v7, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    iget v8, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFormat(IIIIIIII)V

    .line 2675
    return-void
.end method

.method public setFormatNumberInfo(Lcom/infraware/common/UserClasses$CellFormatNumberInfo;)V
    .locals 10
    .parameter "a_oNumberInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2353
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v9

    .line 2356
    .local v9, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iput v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 2359
    iget-boolean v0, p1, Lcom/infraware/common/UserClasses$CellFormatNumberInfo;->m_bDelimiter:Z

    if-eqz v0, :cond_0

    .line 2360
    iput v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    .line 2365
    :goto_0
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_NEGATIVE_TYPE()[I

    move-result-object v0

    iget-object v1, p1, Lcom/infraware/common/UserClasses$CellFormatNumberInfo;->m_eNegativeType:Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;

    invoke-virtual {v1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_NEGATIVE_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2387
    :goto_1
    iget v0, p1, Lcom/infraware/common/UserClasses$CellFormatNumberInfo;->m_nPointerIndex:I

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    .line 2389
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    iget v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iget v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    iget v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    iget v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    iget v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    iget v7, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    iget v8, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFormat(IIIIIIII)V

    .line 2390
    return-void

    .line 2362
    :cond_0
    iput v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    goto :goto_0

    .line 2368
    :pswitch_0
    iput v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    goto :goto_1

    .line 2371
    :pswitch_1
    iput v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    goto :goto_1

    .line 2374
    :pswitch_2
    const/4 v0, 0x2

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    goto :goto_1

    .line 2377
    :pswitch_3
    const/4 v0, 0x3

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    goto :goto_1

    .line 2380
    :pswitch_4
    const/4 v0, 0x4

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    goto :goto_1

    .line 2383
    :pswitch_5
    const/4 v0, 0x5

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    goto :goto_1

    .line 2365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setFormatPercentInfo(I)V
    .locals 10
    .parameter "a_nDecimalPoint"

    .prologue
    .line 2689
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v9

    .line 2691
    .local v9, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    const/4 v0, 0x5

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 2692
    iput p1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    .line 2693
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    iget v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iget v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    iget v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    iget v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    iget v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    iget v7, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    iget v8, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFormat(IIIIIIII)V

    .line 2694
    return-void
.end method

.method public setFormatScientificInfo(I)V
    .locals 10
    .parameter "a_nDecimalPoint"

    .prologue
    .line 2708
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v9

    .line 2710
    .local v9, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    const/4 v0, 0x7

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 2711
    iput p1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    .line 2712
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    iget v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iget v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    iget v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    iget v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    iget v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    iget v7, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    iget v8, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFormat(IIIIIIII)V

    .line 2713
    return-void
.end method

.method public setFormatTextInfo()V
    .locals 10

    .prologue
    .line 2717
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v9

    .line 2719
    .local v9, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    const/16 v0, 0x8

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 2720
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    iget v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iget v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    iget v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    iget v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    iget v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    iget v7, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    iget v8, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFormat(IIIIIIII)V

    .line 2721
    return-void
.end method

.method public setFormatTimeInfo(Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;)V
    .locals 10
    .parameter "a_eTimeType"

    .prologue
    const/4 v2, 0x4

    .line 2641
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v9

    .line 2644
    .local v9, sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    iput v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 2646
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$CELL_FORMAT_TIME_TYPE()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/infraware/common/UserClasses$CELL_FORMAT_TIME_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2666
    :goto_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    iget v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    iget v3, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    iget v4, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    iget v5, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    iget v6, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wDate:I

    iget v7, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    iget v8, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFraction:I

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetFormat(IIIIIIII)V

    .line 2667
    return-void

    .line 2649
    :pswitch_0
    const/4 v0, 0x0

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    goto :goto_0

    .line 2652
    :pswitch_1
    const/4 v0, 0x1

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    goto :goto_0

    .line 2655
    :pswitch_2
    const/4 v0, 0x2

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    goto :goto_0

    .line 2658
    :pswitch_3
    const/4 v0, 0x3

    iput v0, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    goto :goto_0

    .line 2661
    :pswitch_4
    iput v2, v9, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wTime:I

    goto :goto_0

    .line 2646
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setLinespace(III)V
    .locals 14
    .parameter "a_nLineHeight"
    .parameter "a_nBeforeParagraph"
    .parameter "a_nAfterParagraph"

    .prologue
    .line 983
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v13

    .line 984
    .local v13, paraInfo:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    if-gez p1, :cond_0

    iget p1, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineHeight:I

    .line 985
    :cond_0
    if-gez p2, :cond_1

    move-object v0, v13

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaTopValue:I

    move/from16 p2, v0

    .line 986
    :cond_1
    if-gez p3, :cond_2

    move-object v0, v13

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaBottomValue:I

    move/from16 p3, v0

    .line 988
    :cond_2
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v2, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    iget v3, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    iget v4, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    iget v5, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nRightMarginValue:I

    .line 989
    iget v6, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineType:I

    iget v7, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineValue:I

    iget v8, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpace:I

    const/4 v12, 0x0

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    .line 988
    invoke-virtual/range {v1 .. v12}, Lcom/infraware/evengine/ICoEngineInterface;->ISetParaAttribute(IIIIIIIIIIZ)V

    .line 990
    return-void
.end method

.method public setListener(Lcom/infraware/evengine/EvListener$ViewerListener;Lcom/infraware/evengine/EvListener$EditorListener;Lcom/infraware/evengine/EvListener$WordEditorListener;Lcom/infraware/evengine/EvListener$PptEditorListener;Lcom/infraware/evengine/EvListener$SheetEditorListener;)V
    .locals 6
    .parameter "a_oViewerListener"
    .parameter "a_oEditorListener"
    .parameter "a_oWordListener"
    .parameter "a_oPptListener"
    .parameter "a_oSheetListener"

    .prologue
    .line 124
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->ISetListener(Lcom/infraware/evengine/EvListener$ViewerListener;Lcom/infraware/evengine/EvListener$EditorListener;Lcom/infraware/evengine/EvListener$WordEditorListener;Lcom/infraware/evengine/EvListener$PptEditorListener;Lcom/infraware/evengine/EvListener$SheetEditorListener;)V

    .line 125
    return-void
.end method

.method public setObjectAttribute(IIIIIIIIII)V
    .locals 11
    .parameter "aObjMastAtt"
    .parameter "aFillColor"
    .parameter "aGradient"
    .parameter "aBorderColor"
    .parameter "aBorderThick"
    .parameter "aBorderStyle"
    .parameter "aWidth"
    .parameter "aHeight"
    .parameter "aArrowType"
    .parameter "aRate"

    .prologue
    .line 2053
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/infraware/evengine/ICoEngineInterface;->ISetObjectAttribute(IIIIIIIIII)V

    .line 2063
    return-void
.end method

.method public setObjectDelete()V
    .locals 3

    .prologue
    .line 2288
    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 2289
    :cond_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->ICharInsert(II)V

    .line 2292
    :goto_0
    return-void

    .line 2291
    :cond_1
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISetObjDelete()V

    goto :goto_0
.end method

.method public setObjectResize(II)V
    .locals 1
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 2271
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 2272
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/ICoEngineInterface;->ISetObjResize(II)V

    .line 2273
    :cond_0
    return-void
.end method

.method public setObjectTextEdit()V
    .locals 1

    .prologue
    .line 2301
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISetObjTextEdit()V

    .line 2302
    return-void
.end method

.method public setObjectZOrder(Z)V
    .locals 2
    .parameter "a_bForward"

    .prologue
    .line 2306
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ISetObjPos(I)V

    .line 2307
    return-void

    .line 2306
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public setParagraph(Lcom/infraware/common/UserClasses$ParagraphInfo;)V
    .locals 13
    .parameter "a_oParagraphInfo"

    .prologue
    const/4 v11, 0x0

    .line 855
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v12

    .line 857
    .local v12, paraInfo:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eVAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_TOP:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    .line 861
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eHAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_LEFT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_4

    iput v11, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    .line 866
    :cond_1
    :goto_1
    iget v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->nLeftIndent:I

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    .line 867
    iget v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->nRightIndent:I

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nRightMarginValue:I

    .line 868
    iget v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->nFirstLineIndent:I

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineValue:I

    .line 869
    iget v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->nLineSpace:I

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpaceValue:I

    .line 870
    iget v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->nBeforeParagraph:I

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaTopValue:I

    .line 871
    iget v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->nAfterParagraph:I

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaBottomValue:I

    .line 873
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    iget v2, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    iget v3, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    iget v4, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nRightMarginValue:I

    .line 874
    iget v5, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineType:I

    iget v6, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineValue:I

    iget v7, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpace:I

    iget v8, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpaceValue:I

    iget v9, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaTopValue:I

    iget v10, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaBottomValue:I

    .line 873
    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/ICoEngineInterface;->ISetParaAttribute(IIIIIIIIIIZ)V

    .line 875
    return-void

    .line 858
    :cond_2
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eVAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_MIDDLE:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    goto :goto_0

    .line 859
    :cond_3
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eVAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_BOTTOM:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    goto :goto_0

    .line 862
    :cond_4
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eHAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_CENTER:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x2

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    goto :goto_1

    .line 863
    :cond_5
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eHAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_RIGHT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    goto :goto_1

    .line 864
    :cond_6
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eHAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_JUSTIFY:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    goto :goto_1
.end method

.method public setParagraphAlign(Lcom/infraware/common/UserClasses$ALIGN_MODE;)V
    .locals 2
    .parameter "a_eHAlign"

    .prologue
    .line 879
    const/4 v0, -0x1

    .line 880
    .local v0, nHAlign:I
    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_LEFT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    .line 885
    :cond_0
    :goto_0
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1, v0}, Lcom/infraware/evengine/ICoEngineInterface;->IParagraphAlign(I)V

    .line 886
    return-void

    .line 881
    :cond_1
    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_CENTER:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 882
    :cond_2
    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_RIGHT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 883
    :cond_3
    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_JUSTIFY:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method public setParagraphAlign(Lcom/infraware/common/UserClasses$ALIGN_MODE;Lcom/infraware/common/UserClasses$ALIGN_MODE;)V
    .locals 17
    .parameter "a_eVAlign"
    .parameter "a_eHAlign"

    .prologue
    .line 889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    move v2, v0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    move v2, v0

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 891
    :cond_0
    const/16 v14, 0x109

    .line 892
    .local v14, nHAlign:I
    const/16 v15, 0x10e

    .line 894
    .local v15, nVAlign:I
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$ALIGN_MODE()[I

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 899
    :goto_0
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$ALIGN_MODE()[I

    move-result-object v2

    .line 901
    invoke-virtual/range {p2 .. p2}, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 910
    :goto_1
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2, v14, v15}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetSetAlignment(II)V

    .line 933
    :goto_2
    return-void

    .line 896
    :pswitch_0
    const/16 v15, 0x10d

    goto :goto_0

    .line 897
    :pswitch_1
    const/16 v15, 0x10e

    goto :goto_0

    .line 898
    :pswitch_2
    const/16 v15, 0x10f

    goto :goto_0

    .line 903
    :pswitch_3
    const/16 v14, 0x109

    goto :goto_1

    .line 904
    :pswitch_4
    const/16 v14, 0x10a

    goto :goto_1

    .line 905
    :pswitch_5
    const/16 v14, 0x10b

    goto :goto_1

    .line 906
    :pswitch_6
    const/16 v14, 0x10c

    goto :goto_1

    .line 914
    .end local v14           #nHAlign:I
    .end local v15           #nVAlign:I
    :cond_1
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2}, Lcom/infraware/evengine/ICoEngineInterface;->IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v16

    .line 915
    .local v16, paraInfo:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    const/4 v14, -0x1

    .line 916
    .restart local v14       #nHAlign:I
    const/4 v15, -0x1

    .line 918
    .restart local v15       #nVAlign:I
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_TOP:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    move-object/from16 v0, p1

    move-object v1, v2

    if-ne v0, v1, :cond_6

    const/4 v15, 0x4

    .line 922
    :cond_2
    :goto_3
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_LEFT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    move-object/from16 v0, p2

    move-object v1, v2

    if-ne v0, v1, :cond_8

    const/4 v14, 0x0

    .line 927
    :cond_3
    :goto_4
    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    move v2, v0

    if-eq v2, v15, :cond_4

    move v0, v15

    move-object/from16 v1, v16

    iput v0, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    .line 928
    :cond_4
    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    move v2, v0

    if-eq v2, v14, :cond_5

    move v0, v14

    move-object/from16 v1, v16

    iput v0, v1, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    .line 930
    :cond_5
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    move v3, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    move v4, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    move v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nRightMarginValue:I

    move v6, v0

    .line 931
    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineType:I

    move v7, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineValue:I

    move v8, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpace:I

    move v9, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpaceValue:I

    move v10, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaTopValue:I

    move v11, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaBottomValue:I

    move v12, v0

    const/4 v13, 0x0

    .line 930
    invoke-virtual/range {v2 .. v13}, Lcom/infraware/evengine/ICoEngineInterface;->ISetParaAttribute(IIIIIIIIIIZ)V

    goto :goto_2

    .line 919
    :cond_6
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_MIDDLE:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    move-object/from16 v0, p1

    move-object v1, v2

    if-ne v0, v1, :cond_7

    const/4 v15, 0x5

    goto :goto_3

    .line 920
    :cond_7
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_BOTTOM:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    move-object/from16 v0, p1

    move-object v1, v2

    if-ne v0, v1, :cond_2

    const/4 v15, 0x6

    goto :goto_3

    .line 923
    :cond_8
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_CENTER:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    move-object/from16 v0, p2

    move-object v1, v2

    if-ne v0, v1, :cond_9

    const/4 v14, 0x2

    goto :goto_4

    .line 924
    :cond_9
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_RIGHT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    move-object/from16 v0, p2

    move-object v1, v2

    if-ne v0, v1, :cond_a

    const/4 v14, 0x1

    goto :goto_4

    .line 925
    :cond_a
    sget-object v2, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_JUSTIFY:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    move-object/from16 v0, p2

    move-object v1, v2

    if-ne v0, v1, :cond_3

    const/4 v14, 0x3

    goto :goto_4

    .line 894
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 901
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public setParagraphIndent(III)V
    .locals 14
    .parameter "a_nLeft"
    .parameter "a_nRight"
    .parameter "a_nFirstLine"

    .prologue
    .line 949
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v13

    .line 950
    .local v13, paraInfo:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    if-gez p1, :cond_0

    iget p1, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    .line 951
    :cond_0
    if-gez p2, :cond_1

    move-object v0, v13

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nRightMarginValue:I

    move/from16 p2, v0

    .line 952
    :cond_1
    if-gez p3, :cond_2

    move-object v0, v13

    iget v0, v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineValue:I

    move/from16 p3, v0

    .line 954
    :cond_2
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v2, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    iget v3, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    .line 955
    iget v6, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineType:I

    iget v8, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpace:I

    iget v9, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpaceValue:I

    iget v10, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaTopValue:I

    iget v11, v13, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaBottomValue:I

    const/4 v12, 0x0

    move v4, p1

    move/from16 v5, p2

    move/from16 v7, p3

    .line 954
    invoke-virtual/range {v1 .. v12}, Lcom/infraware/evengine/ICoEngineInterface;->ISetParaAttribute(IIIIIIIIIIZ)V

    .line 956
    return-void
.end method

.method public setParagraphUndoMarking(Lcom/infraware/common/UserClasses$ParagraphInfo;)V
    .locals 13
    .parameter "a_oParagraphInfo"

    .prologue
    const/4 v11, 0x1

    .line 617
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v12

    .line 619
    .local v12, paraInfo:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eVAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_TOP:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    .line 623
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eHAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_LEFT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    .line 628
    :cond_1
    :goto_1
    iget v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->nLeftIndent:I

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    .line 629
    iget v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->nRightIndent:I

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nRightMarginValue:I

    .line 630
    iget v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->nFirstLineIndent:I

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineValue:I

    .line 631
    iget v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->nLineSpace:I

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpaceValue:I

    .line 632
    iget v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->nBeforeParagraph:I

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaTopValue:I

    .line 633
    iget v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->nAfterParagraph:I

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaBottomValue:I

    .line 635
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    iget v2, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    iget v3, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLeftMarginValue:I

    iget v4, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nRightMarginValue:I

    .line 636
    iget v5, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineType:I

    iget v6, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->FirstLineValue:I

    iget v7, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpace:I

    iget v8, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nLineSpaceValue:I

    iget v9, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaTopValue:I

    iget v10, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->ParaBottomValue:I

    .line 635
    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/ICoEngineInterface;->ISetParaAttribute(IIIIIIIIIIZ)V

    .line 637
    return-void

    .line 620
    :cond_2
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eVAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_MIDDLE:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    goto :goto_0

    .line 621
    :cond_3
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eVAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_BOTTOM:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nVAlignType:I

    goto :goto_0

    .line 624
    :cond_4
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eHAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_CENTER:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x2

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    goto :goto_1

    .line 625
    :cond_5
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eHAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_RIGHT:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_6

    iput v11, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    goto :goto_1

    .line 626
    :cond_6
    iget-object v0, p1, Lcom/infraware/common/UserClasses$ParagraphInfo;->eHAlignMode:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    sget-object v1, Lcom/infraware/common/UserClasses$ALIGN_MODE;->ALIGN_JUSTIFY:Lcom/infraware/common/UserClasses$ALIGN_MODE;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    iput v0, v12, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->nHAlignType:I

    goto :goto_1
.end method

.method public setPrint(IIILjava/lang/String;I)V
    .locals 6
    .parameter "a_nPaperSize"
    .parameter "a_nStartPage"
    .parameter "a_nEndPage"
    .parameter "a_szFilePath"
    .parameter "a_nReturnType"

    .prologue
    .line 2138
    if-le p2, p3, :cond_0

    .line 2139
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->ISetPrint(IIILjava/lang/String;I)V

    .line 2142
    :goto_0
    return-void

    .line 2141
    :cond_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move v1, p1

    move v2, p3

    move v3, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->ISetPrint(IIILjava/lang/String;I)V

    goto :goto_0
.end method

.method public setReflowTextMode()V
    .locals 4

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1915
    return-void
.end method

.method public setRowHeight(IZ)V
    .locals 3
    .parameter "a_nHeight"
    .parameter "a_bAutoFit"

    .prologue
    const/4 v2, 0x0

    .line 2252
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2253
    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 2254
    .local v0, nFit:I
    :goto_0
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1, v2, p1, v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetSetRowColSize(III)V

    .line 2255
    return-void

    .end local v0           #nFit:I
    :cond_1
    move v0, v2

    .line 2253
    goto :goto_0
.end method

.method public setRowVisiable(ZZ)V
    .locals 4
    .parameter "a_bShow"
    .parameter "a_bAutoFit"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2803
    if-eqz p1, :cond_0

    move v1, v2

    .line 2804
    .local v1, nShow:I
    :goto_0
    if-eqz p2, :cond_1

    move v0, v2

    .line 2805
    .local v0, nFit:I
    :goto_1
    sget-object v2, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v2, v3, v1, v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetShowHideRowCol(III)V

    .line 2806
    return-void

    .end local v0           #nFit:I
    .end local v1           #nShow:I
    :cond_0
    move v1, v3

    .line 2803
    goto :goto_0

    .restart local v1       #nShow:I
    :cond_1
    move v0, v3

    .line 2804
    goto :goto_1
.end method

.method public setShapeObjectAttribute(IIIIIIIIIIZ)V
    .locals 12
    .parameter "aObjMastAtt"
    .parameter "aFillColor"
    .parameter "aGradient"
    .parameter "aBorderColor"
    .parameter "aBorderThick"
    .parameter "aBorderStyle"
    .parameter "aWidth"
    .parameter "aHeight"
    .parameter "aArrowType"
    .parameter "aRate"
    .parameter "a_bUndo"

    .prologue
    .line 2077
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/ICoEngineInterface;->ISetShapeObjectAttribute(IIIIIIIIIIZ)V

    .line 2087
    return-void
.end method

.method public setSheetChartDelete()V
    .locals 3

    .prologue
    .line 2296
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->ICharInsert(II)V

    .line 2297
    return-void
.end method

.method public setSheetFontColor(II)V
    .locals 9
    .parameter "a_nForeground"
    .parameter "a_nBackground"

    .prologue
    const/16 v0, -0x270f

    const/4 v2, 0x0

    .line 772
    const/4 v3, 0x0

    .line 773
    .local v3, nMask:I
    const/4 v5, 0x0

    .line 774
    .local v5, FGColor:I
    const/4 v6, 0x0

    .line 775
    .local v6, BGColor:I
    if-eq p1, v0, :cond_0

    .line 777
    or-int/lit16 v3, v3, 0x4000

    .line 778
    move v5, p1

    .line 780
    :cond_0
    if-eq p2, v0, :cond_2

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_nDocumentType:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 782
    :cond_1
    const v0, 0x8000

    or-int/2addr v3, v0

    .line 783
    move v6, p2

    .line 785
    :cond_2
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISetSheetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 786
    return-void
.end method

.method public setSheetFontFace(I)V
    .locals 9
    .parameter "a_nFontIndex"

    .prologue
    const/4 v2, 0x0

    .line 791
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getFontFaceList()Ljava/util/ArrayList;

    .line 794
    :cond_2
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 796
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_szFontList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 797
    .local v1, szFontName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 799
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v3, 0x3

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISetSheetFontAttribute(Ljava/lang/String;IIIIIII)V

    goto :goto_0
.end method

.method public setSheetFontSize(I)V
    .locals 10
    .parameter "a_nSize"

    .prologue
    const/4 v4, 0x0

    .line 702
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v9

    .line 703
    .local v9, AttInfo:Lcom/infraware/evengine/EV$FONT_INFO;
    const/4 v2, 0x0

    .line 705
    .local v2, nFsize:I
    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    const/4 v2, 0x6

    .line 709
    :goto_0
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    const/4 v3, 0x4

    iget v5, v9, Lcom/infraware/evengine/EV$FONT_INFO;->nFColor:I

    iget v6, v9, Lcom/infraware/evengine/EV$FONT_INFO;->nBColor:I

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISetSheetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 710
    return-void

    .line 706
    :cond_0
    const/16 v0, 0x48

    if-le p1, v0, :cond_1

    const/16 v2, 0x48

    goto :goto_0

    .line 707
    :cond_1
    move v2, p1

    goto :goto_0
.end method

.method public setSheetFontStyle(II)V
    .locals 9
    .parameter "a_nMaskAtt"
    .parameter "a_nAttInfo"

    .prologue
    const/4 v2, 0x0

    .line 767
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x0

    move v3, p1

    move v4, p2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/ICoEngineInterface;->ISetSheetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 768
    return-void
.end method

.method public setSheetProtection()V
    .locals 1

    .prologue
    .line 2818
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetProtection()V

    .line 2819
    return-void
.end method

.method public setSlideNote(ILjava/lang/String;)V
    .locals 3
    .parameter "a_nPageIndex"
    .parameter "a_szText"

    .prologue
    .line 2950
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getPageCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 2957
    :cond_0
    :goto_0
    return-void

    .line 2953
    :cond_1
    if-eqz p2, :cond_2

    .line 2954
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideNoteInput(ILjava/lang/String;I)V

    goto :goto_0

    .line 2956
    :cond_2
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideNoteInput(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V
    .locals 3
    .parameter "a_eViewmode"

    .prologue
    .line 1882
    const/4 v0, 0x3

    .line 1883
    .local v0, nViewMode:I
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->$SWITCH_TABLE$com$infraware$common$UserClasses$VIEW_MODE()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/infraware/common/UserClasses$VIEW_MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1893
    :goto_0
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1, v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISetViewMode(I)V

    .line 1894
    return-void

    .line 1885
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1886
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1887
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1888
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1890
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 1883
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setWordColumn(IZ)V
    .locals 2
    .parameter "a_nCount"
    .parameter "a_bApplyAllPage"

    .prologue
    .line 3022
    if-gtz p1, :cond_1

    const/4 p1, 0x1

    .line 3025
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 3026
    .local v0, nApply:I
    :goto_1
    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1, p1, v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISetColumn(II)V

    .line 3027
    return-void

    .line 3023
    .end local v0           #nApply:I
    :cond_1
    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    .line 3025
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method public setZoom(I)V
    .locals 12
    .parameter "a_nZoomRatio"

    .prologue
    const/4 v1, 0x0

    .line 143
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move v2, p1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/ICoEngineInterface;->ISetZoom(IIIIIIIIIII)V

    .line 144
    return-void
.end method

.method public setZoom(III)V
    .locals 12
    .parameter "a_nZoomRatio"
    .parameter "a_nCenterPosX"
    .parameter "a_nCenterPosY"

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 147
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    move v2, p1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v8

    move v10, p2

    move v11, p3

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/ICoEngineInterface;->ISetZoom(IIIIIIIIIII)V

    .line 148
    return-void
.end method

.method public sortData(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Z)V
    .locals 6
    .parameter "a_nKey1"
    .parameter "a_bAsending1"
    .parameter "a_nKey2"
    .parameter "a_bAsending2"
    .parameter "a_nKey3"
    .parameter "a_bAsending3"

    .prologue
    const/4 v5, 0x1

    .line 1861
    const/4 v0, 0x0

    .local v0, nKey1:I
    const/4 v1, 0x0

    .local v1, nKey2:I
    const/4 v2, 0x0

    .line 1862
    .local v2, nKey3:I
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1864
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1865
    if-nez p2, :cond_0

    mul-int/lit8 v0, v0, -0x1

    .line 1867
    :cond_0
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 1869
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1870
    if-nez p4, :cond_1

    mul-int/lit8 v1, v1, -0x1

    .line 1872
    :cond_1
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 1874
    iget-object v3, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_aszKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1875
    if-nez p6, :cond_2

    mul-int/lit8 v2, v2, -0x1

    .line 1877
    :cond_2
    sget-object v3, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget-boolean v4, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bSortByRows:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetSort(IIII)V

    .line 1878
    return-void

    :cond_3
    move v4, v5

    .line 1877
    goto :goto_0
.end method

.method public startSlideShow(III)V
    .locals 1
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nStartPage"

    .prologue
    .line 2962
    if-lez p3, :cond_0

    invoke-virtual {p0}, Lcom/infraware/common/CoCoreFunctionInterface;->getPageCount()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 2966
    :cond_0
    :goto_0
    return-void

    .line 2965
    :cond_1
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideShow(III)V

    goto :goto_0
.end method

.method public toggleSheetLineBreak()V
    .locals 1

    .prologue
    .line 3130
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IToggleSheetLineBreak()V

    .line 3131
    return-void
.end method

.method public unDo()V
    .locals 4

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface;->m_oHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1990
    return-void
.end method
