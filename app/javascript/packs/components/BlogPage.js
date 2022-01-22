import React from 'react'
import { Chrono } from "react-chrono";
import SocialIcons from '../subComponents/SocialIcons';
import PowerButton from '../subComponents/PowerButton';
import ParticleComponent from '../subComponents/ParticleComponent';
import Me from '../assets/Images/IMG_1184.PNG'

function BlogPage() {

  const items = [{
    title: "Career",
    cardTitle: "経歴",
    // url: "http://www.history.com",
    // cardSubtitle:"Men of the British Expeditionary Force (BEF) wade out to..",
    cardDetailedText: "経歴をまとめた動画になります。",
    media: {
      // type: "IMAGE",
      // type: "VIDEO",
      source: {
        url: "https://www.youtube.com/embed/qsaeIzauV3E",
        // type: "mp4"
      },
      type: "VIDEO",
      // type: muted,
      name: "Pearl Harbor",
    }
  },
  {
    title: "2010 ~ 2016 Feb",
    cardTitle: "トヨタ自動車株式会社",
    // url: "http://www.history.com",
    cardSubtitle:"トヨタ自動車にて保全業務を担当",
    cardDetailedText: "2011年3月→創意工夫改善提案新人賞受賞。2014年6月 QCサークル工場大会優秀賞。",
    media: {
      type: "IMAGE",
      source: {
        url: "http://localhost:3000/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f0693963feafd4fa5de27ed836642c04ad1d1023/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202021-07-01%2022.03.07.png"
      }
    }
  },
  {
    title: "Aug 2016",
    cardTitle: "コスモアカデミー プリプログラミング科",
    // url: "http://www.history.com",
    cardSubtitle:"プログラミング学習開始",
    cardDetailedText: "Javaにてアンドロイドアプリ作成。Ruby on RailsにてSNSアプリ作成",
    media: {
      type: "IMAGE",
      source: {
        url: "http://localhost:3000/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f0693963feafd4fa5de27ed836642c04ad1d1023/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202021-07-01%2022.03.07.png"

      }
    }
  },
  {
    title: "2019 ~ 2021 Jul",
    cardTitle: "株式会社div",
    // url: "http://www.history.com",
    cardSubtitle:"エンジニアメンター業務",
    cardDetailedText: "最終課題メンターを担当。2019年10月 全社メンター対応件数MVP",
    media: {
      type: "IMAGE",
      source: {
        url: "http://localhost:3000/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f0693963feafd4fa5de27ed836642c04ad1d1023/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202021-07-01%2022.03.07.png"
      }
    }
  },
  {
    title: "2020 ~ 2021",
    cardTitle: "17Live",
    // url: "http://www.history.com",
    cardSubtitle:"ライブ配信（現在は転職活動の為休業）",
    cardDetailedText: "ライブイベント（ゴールデンフェザー）全国第3位",
    media: {
      type: "IMAGE",
      source: {
        url: "http://localhost:3000/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f0693963feafd4fa5de27ed836642c04ad1d1023/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202021-07-01%2022.03.07.png"
      }
    }
  },
  {
    title: "2021 Jul ~ ",
    cardTitle: "フリーランス",
    // url: "http://www.history.com",
    cardSubtitle:"業務委託にてエンジニアメンター業務を実施",
    // cardDetailedText: "Men of the British Expeditionary Force (BEF) wade out to..",
    media: {
      type: "IMAGE",
      source: {
        url: "http://localhost:3000/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f0693963feafd4fa5de27ed836642c04ad1d1023/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202021-07-01%2022.03.07.png"
      }
    }
  },];
  return (
    <div className='timeline-box'>
      {/* <SocialIcons theme='dark'/> */}
      <PowerButton />
      <ParticleComponent theme='dark' />
      <Chrono items={items}
      slideShow
      muted
      autoplay
      mode="VERTICAL_ALTERNATING"

       />
      
    </div>
  )
}

export default BlogPage


