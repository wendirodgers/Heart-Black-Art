import React from "react"
import PropTypes from "prop-types"
class ArtistMap extends React.Component {
  render () {
    return (
      <React.Fragment>
        Description: {this.props.description}
      </React.Fragment>
    );
  }
}

ArtistMap.propTypes = {
  description: PropTypes.string
};
export default ArtistMap
